import numpy as np
import matplotlib
matplotlib.use('Agg')   # no display backend needed
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages
import subprocess
import sys
import time
from datetime import datetime

# ---------------------------------------------------------------------------
# Load saved data
# ---------------------------------------------------------------------------
project_name = "Coupled-Line BPF 5000 MHz"
timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")

pdf_filename  = project_name + timestamp + "_report.pdf"

d = np.load(project_name + "_data.npz")

f          = d['f']
S11        = d['S11']
S21        = d['S21']
S22        = d['S22']
phase_S21  = d['phase_S21']

f_MHz = f / 1e6

# Markers

# Center frequecny
f0    = 5000   # centre frequency (MHz)
idx_f0 = np.argmin(np.abs(f_MHz - f0))

# Bottom corner frequecny
f_m1    = 4800   # centre frequency (MHz)
idx_f_m1 = np.argmin(np.abs(f_MHz - f_m1))

# Top corner frequecny
f_m2    = 5200   # centre frequency (MHz)
idx_f_m2 = np.argmin(np.abs(f_MHz - f_m2))


def dB(s):
    return 20 * np.log10(np.abs(s) + 1e-30)


# ---------------------------------------------------------------------------
# Figure 0: Design variables — plain table
# ---------------------------------------------------------------------------
rows = [
    ("Substrate",        "RO4003C"),
    ("er",               f"{float(d['er']):.2f}"),
    ("h",                f"{float(d['th']):.3f} mm"),
    ("tan d",            f"{float(d['tand']):.4f}"),
    ("W50",              f"{float(d['W50']):.3f} mm"),
    ("L1",               f"{float(d['L1']):.3f} mm"),
    ("W1",               f"{float(d['W1']):.3f} mm"),
    ("S1",               f"{float(d['S1']):.3f} mm"),
    ("L2",               f"{float(d['L2']):.3f} mm"),
    ("W2",               f"{float(d['W2']):.3f} mm"),
    ("S2",               f"{float(d['S2']):.3f} mm"),
    ("Lfeed",           f"{float(d['Lfeed']):.1f} mm"),
    ("f0",               f"{float(d['f0_MHz']):.0f} MHz"),
    ("Sweep",            f"{float(d['f_start_MHz']):.0f} – {float(d['f_stop_MHz']):.0f} MHz"),
    ("Simulation time",        f"{float(d['run_time']):.2f} min"),
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
ax1.plot(f_MHz, dB(S21), label='S21',              lw=1.8, color='r')
ax1.axvline(f0, color='gray', ls='--', lw=1, label=f'f0 = {f0} MHz')
ax1.axvline(f_m1, color='gray', ls='--', lw=1, label=f'f = {f_m1} MHz')
ax1.axvline(f_m2, color='gray', ls='--', lw=1, label=f'f = {f_m2} MHz')

mkr_S21 = dB(S21)[idx_f_m1]
ax1.annotate(f'IL = {mkr_S21:.1f} dB',
             xy=(f_m1, mkr_S21), xytext=(f_m1 - 1000, mkr_S21 - 5),
             arrowprops=dict(arrowstyle='->', color='black'), fontsize=10)

mkr_S21 = dB(S21)[idx_f_m2]
ax1.annotate(f'IL = {mkr_S21:.1f} dB',
             xy=(f_m2, mkr_S21), xytext=(f_m2 + 500, mkr_S21 - 5),
             arrowprops=dict(arrowstyle='->', color='black'), fontsize=10)


ax1.set_xlabel('Frequency [MHz]')
ax1.set_ylabel('Magnitude [dB]')
ax1.set_title(f'{project_name} - S-parameters')
ax1.set_ylim(-40, 2)
ax1.set_xlim(f_MHz[0], f_MHz[-1])
ax1.legend()
ax1.grid(True, alpha=0.4)
fig1.tight_layout()


# ---------------------------------------------------------------------------
# Figure 2: S-parameter magnitudes. Passband detail
# ---------------------------------------------------------------------------
fig2, ax2 = plt.subplots(figsize=(8, 5))
ax2.plot(f_MHz, dB(S21), label='S21',              lw=1.8, color='r')
ax2.axvline(f0, color='gray', ls='--', lw=1, label=f'f = {f0} MHz')
ax2.axvline(f_m1, color='gray', ls='--', lw=1, label=f'f = {f_m1} MHz')
ax2.axvline(f_m2, color='gray', ls='--', lw=1, label=f'f = {f_m2} MHz')

mkr_S21 = dB(S21)[idx_f0]
ax2.annotate(f'IL = {mkr_S21:.1f} dB',
             xy=(f0, mkr_S21), xytext=(f0, mkr_S21 - 2),
             arrowprops=dict(arrowstyle='->', color='black'), fontsize=10)

mkr_S21 = dB(S21)[idx_f_m1]
ax2.annotate(f'IL = {mkr_S21:.1f} dB',
             xy=(f_m1, mkr_S21), xytext=(f_m1 - 200, mkr_S21 + 1),
             arrowprops=dict(arrowstyle='->', color='black'), fontsize=10)

mkr_S21 = dB(S21)[idx_f_m2]
ax2.annotate(f'IL = {mkr_S21:.1f} dB',
             xy=(f_m2, mkr_S21), xytext=(f_m2 + 200, mkr_S21 - 1),
             arrowprops=dict(arrowstyle='->', color='black'), fontsize=10)


ax2.set_xlabel('Frequency [MHz]')
ax2.set_ylabel('Magnitude [dB]')
ax2.set_title(f'{project_name} - S-parameters')
ax2.set_ylim(-5, 1)

# Graph limits
x_start = 4500
x_stop = 5500

ax2.yaxis.set_major_locator(matplotlib.ticker.MultipleLocator(1))
ax2.set_xlim(x_start, x_stop)
ax2.legend()
ax2.grid(True, alpha=0.4)
fig2.tight_layout()

# ---------------------------------------------------------------------------
# Save to PDF and open it
# ---------------------------------------------------------------------------
with PdfPages(pdf_filename) as pdf:
    pdf.savefig(fig0)
    pdf.savefig(fig1)
    pdf.savefig(fig2)
    meta = pdf.infodict()
    meta['Title']   = project_name
    meta['Subject'] = 'EM simulation results - double-box branch-line coupler'

print(f"PDF saved -> {pdf_filename}")

# Open the PDF with the system default viewer
if sys.platform.startswith('linux'):
    subprocess.Popen(['xdg-open', pdf_filename])
elif sys.platform == 'darwin':
    subprocess.Popen(['open', pdf_filename])
elif sys.platform == 'win32':
    subprocess.Popen(['start', pdf_filename], shell=True)
