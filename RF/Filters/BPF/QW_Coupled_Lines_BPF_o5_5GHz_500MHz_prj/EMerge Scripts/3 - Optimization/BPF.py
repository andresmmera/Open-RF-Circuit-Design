import matplotlib
matplotlib.use('WebAgg')
import matplotlib.pyplot as plt
import subprocess
import emerge as em
import numpy as np
import time
from datetime import datetime

# ---------------------------------------------------------------------------
# PROJECT NAME
# ---------------------------------------------------------------------------
project_name = "Coupled-Line BPF 5000 MHz OPT"

# ---------------------------------------------------------------------------
# Units
# ---------------------------------------------------------------------------
mm  = 1e-3
MHz = 1e6

# ---------------------------------------------------------------------------
# Substrate
# ---------------------------------------------------------------------------
er   = 3.55
th   = 0.508
tand = 0.0029

# ---------------------------------------------------------------------------
# Center frequency
# ---------------------------------------------------------------------------
f0_MHz = 5000
f0 = f0_MHz * MHz

# ---------------------------------------------------------------------------
# Fixed geometry parameters
# ---------------------------------------------------------------------------
W50   = 1.1
L1    = 8.93
L2    = 8.78
Lfeed = 5

# Initial guesses (used for optimizer start point)
W1 = 0.76   # [mm] Width of the first/fourth section of coupled lines
S1 = 0.11   # [mm] Gap of the first/fourth section of coupled lines
W2 = 1.08   # [mm] Width of the second/third section of coupled lines
S2 = 0.35   # [mm] Gap of the second/third section of coupled lines


# ---------------------------------------------------------------------------
# GEOMETRY BUILDER
# ---------------------------------------------------------------------------
def build_geometry(pcb, W1, S1, W2, S2):
    """
    Lay out the 4-section coupled-line BPF on *pcb*.

    All dimensions in mm. Returns the compiled BPF path object, the two
    modal-port face objects (p1, p2), and the dielectric solid (diel).

    Layout (y grows upward):
        feed_p1  ->  section1  ->  section2  ->  section3  ->  section4  ->  feed_p2
    """

    pcb_margin = 10          # [mm] Board margin on all sides

    # --- Port 1 feed line ---------------------------------------------------
    x_P1 = pcb_margin + W50 / 2
    y_P1 = 0
    pcb.new(x_P1, y_P1, W50, (0, -1)).straight(Lfeed)['p1']

    # --- Section 1 ----------------------------------------------------------
    x1 = x_P1 + W50 / 2 - W1 / 2
    y1 = y_P1
    pcb.new(x1,           y1, W1, (0, 1)).straight(L1)   # top trace
    pcb.new(x1 + W1 + S1, y1, W1, (0, 1)).straight(L1)   # bottom trace

    # --- Section 2 ----------------------------------------------------------
    x2 = x1 + W1 + S1 + W2 / 2 - W1 / 2
    y2 = y1 + L1
    pcb.new(x2,           y2, W2, (0, 1)).straight(L2)
    pcb.new(x2 + W2 + S2, y2, W2, (0, 1)).straight(L2)

    # --- Section 3 ----------------------------------------------------------
    x3 = x2 + W2 + S2
    y3 = y2 + L2
    pcb.new(x3,           y3, W2, (0, 1)).straight(L2)
    pcb.new(x3 + W2 + S2, y3, W2, (0, 1)).straight(L2)

    # --- Section 4 ----------------------------------------------------------
    x4 = x3 + W2 + S2 + W2 / 2 - W1 / 2
    y4 = y3 + L2
    pcb.new(x4,           y4, W1, (0, 1)).straight(L1)
    pcb.new(x4 + W1 + S1, y4, W1, (0, 1)).straight(L1)

    # --- Port 2 feed line ---------------------------------------------------
    x_out = x4 + W1 + S1 + W50 / 2 - W1 / 2
    y_out = y4 + L1
    pcb.new(x_out, y_out, W50, (0, 1)).straight(Lfeed)['p2']

    # --- Compile ------------------------------------------------------------
    BPF = pcb.compile_paths(merge=True)

    pcb.determine_bounds(leftmargin=pcb_margin, rightmargin=pcb_margin)
    diel = pcb.generate_pcb()
    pcb.generate_air(4 * th)

    p1 = pcb.modal_port(pcb['p1'], width_multiplier=5, height=4 * th)
    p2 = pcb.modal_port(pcb['p2'], width_multiplier=5, height=4 * th)

    return BPF, p1, p2, diel


# ---------------------------------------------------------------------------
# OPTIMIZATION MODEL
# ---------------------------------------------------------------------------
model = em.Simulation(project_name)
model.check_version("2.3.0")

model.opt.add_param('S1', S1 * mm, (0.9 * S1 * mm, 1.1 * S1 * mm))
model.opt.add_param('S2', S2 * mm, (0.9 * S2 * mm, 1.1 * S2 * mm))
model.opt.add_param('W1', W1 * mm, (0.9 * W1 * mm, 1.1 * W1 * mm))
model.opt.add_param('W2', W2 * mm, (0.9 * W2 * mm, 1.1 * W2 * mm))

model.opt.method = 'COBYQA'

# ---------------------------------------------------------------------------
# OPTIMIZATION LOOP
# ---------------------------------------------------------------------------
iter_num = 0
for S1_opt, S2_opt, W1_opt, W2_opt in model.opt.run(max_iter=40):
    iter_num += 1

    model.reset(all=True)

    mat = em.Material(er=er, tand=tand)
    pcb = em.geo.PCBNew(th, unit=mm, material=mat)

    BPF, p1, p2, _ = build_geometry(
        pcb,
        W1=W1_opt / mm,
        S1=S1_opt / mm,
        W2=W2_opt / mm,
        S2=S2_opt / mm,
    )

    model.commit_geometry()

    model.mw.set_resolution(0.2)
    model.mw.set_frequency_range(4.8e9, 5.2e9, 41)

    model.mw.bc.ModalPort(p1, 1, modetype='TEM')
    model.mw.bc.ModalPort(p2, 2, modetype='TEM')

    model.generate_mesh()
    data = model.mw.run_sweep()

    grid = data.scalar.grid

    # Use raw solver points directly — vector fitting needs many more points
    # than available here to be reliable. 41 points over 400 MHz gives 10 MHz
    # spacing, which lands exactly on the 4.8 and 5.2 GHz band edges.
    f_dense = grid.freq.flatten()
    S11_dB  = 20 * np.log10(np.abs(grid.S(1, 1).flatten()))
    S21_dB  = 20 * np.log10(np.abs(grid.S(2, 1).flatten()))

    # Objective: worst-case S11 across the full passband
    # Negative  -> passing the -20 dB spec
    # Positive  -> violating it
    objective = np.max(S11_dB) + 20

    # --- Per-iteration plot -------------------------------------------------
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(7, 6), sharex=True)
    status = 'PASS' if objective < 0 else 'FAIL'
    fig.suptitle(f"Iteration {iter_num}  |  objective = {objective:.2f} dB  |  {status}")

    ax1.plot(f_dense / 1e9, S11_dB, color='tab:blue', label='S11')
    ax1.axhline(-20, color='k', linestyle='--', linewidth=0.8, label='-20 dB limit')
    ax1.axvline(4.8, color='gray', linestyle=':', linewidth=0.8, label='Band edges')
    ax1.axvline(5.2, color='gray', linestyle=':', linewidth=0.8)
    ax1.set_ylabel('S11 (dB)')
    ax1.set_ylim(-60, 5)
    ax1.legend(fontsize=8)
    ax1.grid(True)

    ax2.plot(f_dense / 1e9, S21_dB, color='tab:orange', label='S21')
    ax2.axvline(4.8, color='gray', linestyle=':', linewidth=0.8)
    ax2.axvline(5.2, color='gray', linestyle=':', linewidth=0.8)
    ax2.set_ylabel('S21 (dB)')
    ax2.set_xlabel('Frequency (GHz)')
    ax2.set_ylim(-40, 5)
    ax2.legend(fontsize=8)
    ax2.grid(True)

    plt.tight_layout()
    plt.savefig(f"opt_iter_{iter_num:03d}.png", dpi=100)
    plt.close(fig)
    # ------------------------------------------------------------------------

    model.opt.update(objective)
    print(f"Iter {iter_num:3d} | Objective: {objective:.3f} dB | {status}")

    if objective < 0:
        model.opt.stop()   # spec met — no need to keep iterating

# ---------------------------------------------------------------------------
# RETRIEVE BEST SOLUTION
# ---------------------------------------------------------------------------
model.reset(all=True)
solution, value = model.opt.best

print("\nBest solution:", solution)
print("Final objective:", value)

S1 = solution['S1'] / mm
S2 = solution['S2'] / mm
W1 = solution['W1'] / mm
W2 = solution['W2'] / mm

# ---------------------------------------------------------------------------
# FINAL HIGH-ACCURACY SIMULATION
# ---------------------------------------------------------------------------
f_start  = 2500 * MHz
f_stop   = 7500 * MHz
n_points = 50

model = em.Simulation(project_name)
model.check_version("2.3.0")

mat = em.Material(er=er, tand=tand, color="#488343", opacity=0.4)
pcb = em.geo.PCBNew(th, unit=mm, material=mat)

BPF, p1, p2, diel = build_geometry(pcb, W1=W1, S1=S1, W2=W2, S2=S2)

# ---------------------------------------------------------------------------
# Solver settings
# ---------------------------------------------------------------------------
model.mw.set_resolution(0.2)
model.mw.set_frequency_range(f_start, f_stop, n_points)

model.commit_geometry()

# ---------------------------------------------------------------------------
# Mesh refinement
# ---------------------------------------------------------------------------
model.mesher.set_boundary_size(BPF, 0.5 * mm, growth_rate=10)
model.mesher.set_face_size(p1, 0.5 * mm)
model.mesher.set_face_size(p2, 0.5 * mm)

model.generate_mesh()
model.view(plot_mesh=True)

# ---------------------------------------------------------------------------
# Boundary conditions
# ---------------------------------------------------------------------------
port1 = model.mw.bc.ModalPort(p1, 1, modetype='TEM')
port2 = model.mw.bc.ModalPort(p2, 2, modetype='TEM')

# ---------------------------------------------------------------------------
# Run solver
# ---------------------------------------------------------------------------
start_time = time.time()
data = model.mw.run_sweep(parallel=True, n_workers=8, frequency_groups=8)
run_time = (time.time() - start_time) / 60
print(f"Simulation completed in {run_time:.2f} minutes")

# ---------------------------------------------------------------------------
# Extract S-parameters
# ---------------------------------------------------------------------------
grid = data.scalar.grid
f    = grid.freq

S11 = grid.S(1, 1)
S21 = grid.S(2, 1)
S22 = grid.S(2, 2)

# ---------------------------------------------------------------------------
# Vector fitting — supersampled plot
# ---------------------------------------------------------------------------
n_supersamples = 2001
f_fit = np.linspace(f_start, f_stop, n_supersamples)
f_MHz = f_fit / 1e6

S11_fit = grid.model_S(1, 1, f_fit)
S21_fit = grid.model_S(2, 1, f_fit)
S22_fit = grid.model_S(2, 2, f_fit)

phase_S21 = np.angle(S21_fit, deg=True)

# ---------------------------------------------------------------------------
# 3-D field visualisation at f0
# ---------------------------------------------------------------------------
field = data.field.find(freq=f0)

model.display.add_object(diel)
model.display.add_object(BPF)
model.display.add_portmode(port1, k0=field.k0)
model.display.add_portmode(port2, k0=field.k0)
model.display.add_field(
    field.cutplane(0.5 * mm, z=-0.5 * th * mm).scalar('Ez', 'real'),
    symmetrize=True,
)
model.display.show()

# ---------------------------------------------------------------------------
# Export Touchstone
# ---------------------------------------------------------------------------
comments = [
    f"--- {project_name} ---",
    "Substrate: RO4003C",
    f"h = {th} mm",
    f"W50 = {W50} mm, Lfeed = {Lfeed} mm",
    f"L1 = {L1} mm, S1 = {S1} mm, W1 = {W1} mm",
    f"L2 = {L2} mm, S2 = {S2} mm, W2 = {W2} mm",
    f"Run time = {run_time:.2f} min",
]

timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
grid.export_touchstone(project_name + "_EMerge_" + timestamp, custom_comments=comments)

# ---------------------------------------------------------------------------
# Save data for post-processing
# ---------------------------------------------------------------------------
np.savez(
    project_name + "_data.npz",
    f=f_fit, S11=S11_fit, S21=S21_fit, S22=S22_fit,
    phase_S21=phase_S21,
    er=er, th=th, tand=tand,
    W50=W50, Lfeed=Lfeed,
    L1=L1, W1=W1, S1=S1,
    L2=L2, W2=W2, S2=S2,
    f0_MHz=f0_MHz, f_start_MHz=f_start / MHz, f_stop_MHz=f_stop / MHz,
    run_time=run_time,
)

subprocess.run(["python", "postprocessing.py"], check=True)
