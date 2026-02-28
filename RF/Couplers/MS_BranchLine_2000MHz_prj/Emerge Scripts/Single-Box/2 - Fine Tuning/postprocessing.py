import numpy as np
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages
matplotlib.use('Qt5Agg')
import subprocess
import sys
from datetime import datetime

# ---------------------------------------------------------------------------
# Output mode
#   SHOW_PLOTS = True  → interactive matplotlib windows (no PDF saved)
#   SHOW_PLOTS = False → PDF report saved and opened automatically
# ---------------------------------------------------------------------------
SHOW_PLOTS = True

# ---------------------------------------------------------------------------
# Load saved data
# ---------------------------------------------------------------------------
timestamp    = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
project_name = "Branch-Line Coupler 2000 MHz"
pdf_filename = project_name + "_" + timestamp + "_report.pdf"

d = np.load(project_name + "_data.npz")

f          = d['f']           # frequency array (Hz)
S11        = d['S11']         # input reflection
S21        = d['S21']         # in-phase port
S31        = d['S31']         # isolated port
S41        = d['S41']         # quadrature port
S42        = d['S42']         # isolation
phase_diff = d['phase_diff']  # phase(S21) - phase(S41) in degrees

f_MHz  = f / 1e6
f0     = 2000   # centre frequency (MHz)
idx_f0 = np.argmin(np.abs(f_MHz - f0))

def dB(s):
    return 20 * np.log10(np.abs(s) + 1e-30)

if not SHOW_PLOTS:
    matplotlib.use('Agg')  # non-interactive backend for PDF generation

# ---------------------------------------------------------------------------
# Figure 0: Design variables — plain table
# ---------------------------------------------------------------------------
rows = [
    ("Substrate",  "RO4003C"),
    ("er",         f"{float(d['er']):.2f}"),
    ("h",          f"{float(d['th']):.3f} mm"),
    ("tan d",      f"{float(d['tand']):.4f}"),
    ("W50",        f"{float(d['W50']):.3f} mm"),
    ("W35",        f"{float(d['W35']):.3f} mm"),
    ("Lx  (λ/4)",  f"{float(d['Lx']):.1f} mm"),
    ("Ly  (λ/4)",  f"{float(d['Ly']):.1f} mm"),
    ("L_feed",     f"{float(d['L_feed']):.1f} mm"),
    ("f0",         f"{float(d['f0_MHz']):.0f} MHz"),
    ("Sweep",      f"{float(d['f_start_MHz']):.0f} – {float(d['f_stop_MHz']):.0f} MHz"),
    ("Simulation time", f"{float(d['run_time']):.2f} min"),
]

fig0, ax0 = plt.subplots(figsize=(5, len(rows) * 0.35 + 0.4))
ax0.set_axis_off()
tbl = ax0.table(
    cellText=[[p, v] for p, v in rows],
    colLabels=["Parameter", "Value"],
    colWidths=[0.45, 0.55],
    loc='center',
    cellLoc='left',
)
tbl.auto_set_font_size(False)
tbl.set_fontsize(9)
tbl.scale(1, 1.3)

# Style header row
for col in (0, 1):
    tbl[(0, col)].set_facecolor('#2e4a7a')
    tbl[(0, col)].set_text_props(color='white', fontweight='bold')

# Alternating row shading
for row in range(1, len(rows) + 1):
    fc = '#eef2f9' if row % 2 == 0 else 'white'
    for col in (0, 1):
        tbl[(row, col)].set_facecolor(fc)
        tbl[(row, col)].set_edgecolor('#cccccc')

ax0.set_title(f'{project_name}\nDesign Variables',
              fontsize=10, fontweight='bold', pad=6)
fig0.tight_layout()


# ---------------------------------------------------------------------------
# Figure 1: S-parameter magnitudes
# ---------------------------------------------------------------------------
fig1, ax1 = plt.subplots(figsize=(8, 5))
ax1.plot(f_MHz, dB(S11), label='S11 (return loss)',           lw=1.8, color='b')
ax1.plot(f_MHz, dB(S21), label='S21 (in-phase)',              lw=1.8, color='r')
ax1.plot(f_MHz, dB(S41), label='S41 (quadrature)',            lw=1.8, color='g')
ax1.plot(f_MHz, dB(S42), label='S42 (isolation bt/ outputs)', lw=1.8, color='k')
ax1.axvline(f0, color='gray', ls='--', lw=1, label=f'f0 = {f0} MHz')

mkr_S21 = dB(S21)[idx_f0]
ax1.annotate(f'In-Phase IL = {mkr_S21:.1f} dB',
             xy=(f0, mkr_S21), xytext=(f0 - 300, mkr_S21 + 2),
             arrowprops=dict(arrowstyle='->', color='black'), fontsize=10)

mkr_S41 = dB(S41)[idx_f0]
ax1.annotate(f'Quadrature IL = {mkr_S41:.1f} dB',
             xy=(f0, mkr_S41), xytext=(f0 - 300, mkr_S41 - 4),
             arrowprops=dict(arrowstyle='->', color='black'), fontsize=10)

ax1.set_xlabel('Frequency [MHz]')
ax1.set_ylabel('Magnitude [dB]')
ax1.set_title(f'{project_name} — S-parameters')
ax1.set_ylim(-40, 2)
ax1.set_xlim(f_MHz[0], f_MHz[-1])
ax1.legend()
ax1.grid(True, alpha=0.4)
fig1.tight_layout()


# ---------------------------------------------------------------------------
# Figure 2: Phase difference S21 - S41 (should be ~-90° at f0)
# ---------------------------------------------------------------------------
fig2, ax2 = plt.subplots(figsize=(8, 4))
ax2.plot(f_MHz, phase_diff, color='tab:purple', lw=1.8)
ax2.axvline(f0, color='gray', ls=':', lw=1, label=f'f0 = {f0} MHz')

pd_at_f0 = phase_diff[idx_f0]
ax2.annotate(f'{pd_at_f0:.1f}°',
             xy=(f0, pd_at_f0), xytext=(f0 + 100, pd_at_f0 + 8),
             arrowprops=dict(arrowstyle='->', color='black'), fontsize=10)

ax2.set_xlabel('Frequency [MHz]')
ax2.set_ylabel('Phase(S21) − Phase(S41) [°]')
ax2.set_title(f'{project_name} — Phase difference (I vs Q)')
ax2.set_xlim(f_MHz[0], f_MHz[-1])
ax2.legend()
ax2.grid(True, alpha=0.4)
fig2.tight_layout()


# ---------------------------------------------------------------------------
# Output: interactive windows or PDF
# ---------------------------------------------------------------------------
if SHOW_PLOTS:
    plt.show()
else:
    with PdfPages(pdf_filename) as pdf:
        pdf.savefig(fig0)
        pdf.savefig(fig1)
        pdf.savefig(fig2)
        meta = pdf.infodict()
        meta['Title']   = project_name
        meta['Subject'] = 'EM simulation results - branch-line coupler'

    print(f"PDF saved -> {pdf_filename}")

    # Open the PDF with the system default viewer
    if sys.platform.startswith('linux'):
        subprocess.Popen(['xdg-open', pdf_filename])
    elif sys.platform == 'darwin':
        subprocess.Popen(['open', pdf_filename])
    elif sys.platform == 'win32':
        subprocess.Popen(['start', pdf_filename], shell=True)
