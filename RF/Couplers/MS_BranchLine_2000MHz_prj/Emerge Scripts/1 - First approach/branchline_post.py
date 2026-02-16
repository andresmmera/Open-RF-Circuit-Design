import numpy as np
import matplotlib
matplotlib.use('WebAgg')
import matplotlib.pyplot as plt

# ---------------------------------------------------------------------------
# Load saved data
# ---------------------------------------------------------------------------
project_name = "Branch-Line Coupler 2000 MHz"
d = np.load(project_name + "_data.npz")

f          = d['f']           # frequency array (Hz)
S11        = d['S11']         # input reflection
S21        = d['S21']         # in-phase port
S31        = d['S31']         # isolated port
S41        = d['S41']         # quadrature port
S42        = d['S42']         # isolation
phase_diff = d['phase_diff']  # phase(S21) - phase(S31) in degrees

f_MHz = f / 1e6
f0    = 2000      # centre frequency (MHz)

def dB(s):
    return 20 * np.log10(np.abs(s) + 1e-30)

# ---------------------------------------------------------------------------
# Figure 1: S-parameter magnitudes
# ---------------------------------------------------------------------------
fig1, ax1 = plt.subplots(figsize=(8, 5))
ax1.plot(f_MHz, dB(S11), label='S11 (return loss)',  lw=1.8, color='b')  # blue
ax1.plot(f_MHz, dB(S21), label='S21 (in-phase)',     lw=1.8, color='r')  # red
ax1.plot(f_MHz, dB(S41), label='S41 (quadrature)',   lw=1.8, color='g')  # green
ax1.plot(f_MHz, dB(S42), label='S42 (isolation bt/ outputs)',     lw=1.8, color='k')  # black
ax1.axvline(f0, color='gray', ls='--', lw=1, label=f'f₀ = {f0} MHz')
ax1.set_xlabel('Frequency [MHz]')
ax1.set_ylabel('Magnitude [dB]')
ax1.set_title(f'{project_name} — S-parameters')
ax1.set_ylim(-40, 2)
ax1.set_xlim(f_MHz[0], f_MHz[-1])
ax1.legend()
ax1.grid(True, alpha=0.4)
fig1.tight_layout()

# ---------------------------------------------------------------------------
# Figure 2: Phase difference S21 - S31 (should be ~-90° at f0)
# ---------------------------------------------------------------------------
fig2, ax2 = plt.subplots(figsize=(8, 4))
ax2.plot(f_MHz, phase_diff, color='tab:purple', lw=1.8)
ax2.axvline(f0,  color='gray', ls=':',  lw=1, label=f'f₀ = {f0} MHz')

# Annotate the value at f0
idx_f0    = np.argmin(np.abs(f_MHz - f0))
pd_at_f0  = phase_diff[idx_f0]
ax2.annotate(f'{pd_at_f0:.1f}°',
             xy=(f0, pd_at_f0),
             xytext=(f0 + 0.1, pd_at_f0 + 8),
             arrowprops=dict(arrowstyle='->', color='black'),
             fontsize=10)

ax2.set_xlabel('Frequency [MHz]')
ax2.set_ylabel('Phase(S21) − Phase(S41) [°]')
ax2.set_title(f'{project_name} — Phase difference (I vs Q)')
ax2.set_xlim(f_MHz[0], f_MHz[-1])
ax2.legend()
ax2.grid(True, alpha=0.4)
fig2.tight_layout()

plt.show()
