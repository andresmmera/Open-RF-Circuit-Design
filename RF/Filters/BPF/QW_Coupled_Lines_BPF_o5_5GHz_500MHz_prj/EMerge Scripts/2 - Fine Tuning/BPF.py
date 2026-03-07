import matplotlib
matplotlib.use('WebAgg')
import matplotlib.pyplot as plt
import subprocess  # Used to run the post-processing script
import emerge as em
import numpy as np
import time
from datetime import datetime

# ---------------------------------------------------------------------------
# PROJECT NAME
# ---------------------------------------------------------------------------
project_name = "Coupled-Line BPF 5000 MHz"

# ---------------------------------------------------------------------------
# Unit definitions
# ---------------------------------------------------------------------------
mm  = 1e-3         # m
mil = 0.0254 * mm  # meter per mil
MHz = 1e6          # Hz

# ---------------------------------------------------------------------------
# Substrate / material
# ---------------------------------------------------------------------------
er   = 3.55   # RO4003C relative permittivity
th   = 0.508  # [mm] (20 mil) Substrate thickness
tand = 0.0029 # Substrate loss tangent

# ---------------------------------------------------------------------------
# Center frequency
# ---------------------------------------------------------------------------
f0_MHz = 5000
f0 = f0_MHz * MHz  # centre frequency (Hz)


W50 = 1.1         # [mm] Trace width for 50 Ω feed lines

W1  = 0.76        # [mm] Width of the first section ofcoupled lines
L1  = 8.93        # [mm] Length of the first section of coupled lines
S1  = 0.11       # [mm] Gap between the first section of coupled lines

W2  = 1.08        # [mm] Width of the second section of coupled lines
L2  = 8.78        # [mm] Length of the second section of coupled lines
S2  = 0.35        # [mm] Gap between the second section of coupled lines


Lfeed = 5   # [mm] Feed-line length

# ---------------------------------------------------------------------------
# Simulation setup
# ---------------------------------------------------------------------------
model = em.Simulation(project_name)
model.check_version("2.3.0")

# ---------------------------------------------------------------------------
# Frequency sweep
# ---------------------------------------------------------------------------
f_start  = 2500  * MHz
f_stop   = 7500 * MHz
n_points = 50

# ---------------------------------------------------------------------------
# Material and PCB layouter
# ---------------------------------------------------------------------------
mat = em.Material(er=er, tand=tand, color="#488343", opacity=0.4)
pcb = em.geo.PCBNew(th, unit=mm, material=mat)

# ---------------------------------------------------------------------------
# Layout
#
# Coordinate conventions (same as single-box script):
#   x  →  horizontal (port-to-port direction along the top/bottom rails)
#   y  ↑  vertical   (between top and bottom rails)
#
# ---------------------------------------------------------------------------
pcb_margin = 10  # [mm] Board margin on all sides

# Port 1
x_P1 = pcb_margin+W50/2
y_P1 = 0

# P1 input feed line
pcb.new(x_P1, y_P1, W50, (0, -1)).straight(Lfeed)['p1']

# ---------------------------------------------------------------------------
# First pair of coupled lines

# Top trace
x_first_section = x_P1 + W50/2 - W1/2
pcb.new(x_first_section, y_P1, W1, (0, 1)).straight(L1)

# Bottom trace
pcb.new(x_first_section + W1+S1, y_P1, W1, (0, 1)).straight(L1)

# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Second pair of coupled lines

# Top trace
x_2nd_section = x_first_section + W1 + S1 + W2/2 - W1/2
y_2nd_section = y_P1 + L1
pcb.new(x_2nd_section, y_2nd_section, W2, (0, 1)).straight(L2)

# Bottom trace
pcb.new(x_2nd_section + W2 + S2, y_2nd_section, W2, (0, 1)).straight(L2)

# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Third pair of coupled lines

# Top trace
x_3rd_section = x_2nd_section + W2 + S2
y_3rd_section = y_2nd_section + L2
pcb.new(x_3rd_section, y_3rd_section, W2, (0, 1)).straight(L2)

# Bottom trace
pcb.new(x_3rd_section + W2 + S2, y_3rd_section, W2, (0, 1)).straight(L2)

# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Fourth pair of coupled lines

# Top trace
x_4th_section = x_3rd_section + W2 + S2 + W2/2 - W1/2
y_4th_section = y_3rd_section + L2
pcb.new(x_4th_section, y_4th_section, W1, (0, 1)).straight(L1)

# Bottom trace
pcb.new(x_4th_section + W1 + S1, y_4th_section, W1, (0, 1)).straight(L1)

# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Output port feed line

x_out_feed = x_4th_section + W1 + S1 + W50/2 - W1/2
y_out_feed = y_4th_section + L1
pcb.new(x_out_feed, y_out_feed, W50, (0, 1)).straight(Lfeed)['p2']

# ---------------------------------------------------------------------------

BPF = pcb.compile_paths(merge=True)

# ---------------------------------------------------------------------------
# Bounding box, dielectric and air
# ---------------------------------------------------------------------------
pcb.determine_bounds(leftmargin=pcb_margin, rightmargin=pcb_margin)
diel = pcb.generate_pcb()
air  = pcb.generate_air(4 * th)

# ---------------------------------------------------------------------------
# Modal ports
# ---------------------------------------------------------------------------
p1 = pcb.modal_port(pcb['p1'], width_multiplier=5, height=4 * th)
p2 = pcb.modal_port(pcb['p2'], width_multiplier=5, height=4 * th)

# ---------------------------------------------------------------------------
# Solver settings
# ---------------------------------------------------------------------------
model.mw.set_resolution(0.2)
model.mw.set_frequency_range(f_start, f_stop, n_points)

# ---------------------------------------------------------------------------
# Assemble geometry
# ---------------------------------------------------------------------------
model.commit_geometry()

# ---------------------------------------------------------------------------
# Mesh refinement
# ---------------------------------------------------------------------------
model.mesher.set_boundary_size(BPF, 0.5 * mm, growth_rate=10)
model.mesher.set_face_size(p1, 0.5 * mm)
model.mesher.set_face_size(p2, 0.5 * mm)

# ---------------------------------------------------------------------------
# Mesh generation and visualisation
# ---------------------------------------------------------------------------
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
# Extract S-parameters (raw solver points)
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
f_fit  = np.linspace(f_start, f_stop, n_supersamples)
f_MHz  = f_fit / 1e6  # Scale for displaying the graphs

S11_fit = grid.model_S(1, 1, f_fit)
S21_fit = grid.model_S(2, 1, f_fit)
S22_fit = grid.model_S(2, 2, f_fit)

phase_S21  = np.angle(S21_fit, deg=True)  # phase response

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
    f"L2 = {L1} mm, S2 = {S1} mm, W2 = {W2} mm",
    f"Run time = {run_time:.2f} min",
]

timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
grid.export_touchstone(project_name + "_EMerge_" + timestamp, custom_comments=comments)

# Save data for post-processing
np.savez(
    project_name + "_data.npz",
    # S-parameters
    f=f_fit, S11=S11_fit, S21=S21_fit, S22=S22_fit,
    phase_S21=phase_S21,
    # Substrate
    er=er, th=th, tand=tand,
    # Trace widths
    W50=W50, Lfeed=Lfeed,
    # Coupled lines 1 and 4
    L1=L1, W1=W1, S1=S1,
    #Coupled lines 2 and 3
    L2=L2, W2=W2, S2=S2,
    # Frequency sweep
    f0_MHz=f0_MHz, f_start_MHz=f_start/MHz, f_stop_MHz=f_stop/MHz,
    # Run metadata
    run_time=run_time,
)

subprocess.run(["python", "postprocessing.py"], check=True)
