# Intercept Diagram

## Introduction

The intercept diagram is a tool to evaluate rapidly the dynamic range of a system using information from the two-tone test and NF data.

The following data is needed:

> | Data | Description |
> |---|---|
> | $G$ | Linear gain (dB) |
> | $NF$ | Noise figure of the systems (dB) |
> | $BW$ | Channel bandwidth (Hz) |
> | $P_{out}$ | Power of the carriers in the two tone test (dBm) |
> | $\Delta_2$ | Power difference between fundamental and IM2 product (dB) |
> | $\Delta_3$ | Power difference between fundamental and IM3 product (dB) |
> | $OP_{1dB}$ | Output power at which the actual gain deviates from the linear gain (dBm) |
> | $SI_{min}$ | Minimum signal-to-interference (or signal-to-noise) ratio required for the system to work (dB) |

[Here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/RF/Notes/Interception_Diagram) you can find the equations as a Jupyter Notebook and also as a raw Python script

### Noise floor

The first step is to determine the noise floor of the system, which depends on the Noise Figure and the channel bandwidth

#### Thermal Noise
Any resistive element at a physical temperature $T$ generates thermal noise.
The available noise power over a bandwidth $B$ is:

$$N_{thermal} = kTB$$

At room temperature (T = 290 K}) over 1 Hz, this evaluates to the well-known noise floor of -174 dBm/Hz.


#### Noise Figure
A real receiver adds noise beyond the thermal floor. The **noise figure** quantifies
this degradation as the difference in SNR between input and output:

$$\text{NF} = \text{SNR}_{in} - \text{SNR}_{out} \quad \text{[dB]}$$

Its linear equivalent, the **noise factor** $F$, is:

$$F = 10^{\,\text{NF}/10}$$


#### Total Noise Floor
The total noise power at the output, referred to the input, is_

$$N_{total} = F \cdot kTB$$

$$N_{total}\,[\text{dBm}] = \text{NF} + 10\log_{10}(kTB) + 30$$

> **Variables**
> | Symbol | Description |
> |---|---|
> | $k$ | Boltzmann constant ($1.381 \times 10^{-23}$ J/K) |
> | $T$ | System temperature (K) |
> | $B$ | Noise bandwidth (Hz) |
> | $F$ | Noise factor (linear) |
> | $\text{NF}$ | Noise figure (dB) |
> | $N_{thermal}$ | Thermal noise power at input, $kTB$ (W) |
> | $N_{total}$ | Total noise power referred to input, $F{\cdot}kTB$ (W) |

### Intercept Point (IPn) Calculations

#### Two-Tone Test

The intermodulation distortion is often characterized using the intercept points, mainly for the third order. In broadband systems, the second order intermodulation products lie inside the band, the second order intercept point is also needed.

The incercept point is defined as the hypothetical power level at which the fundamental and the intermodulation (IM) product would intersect if extrapolated linearly. Both IP3 and IP2 can be calculated from the two-tone test.

#### Second Order Intercept Point (IP2)

The second-order IM product grows 2 dB for every 1 dB increase in input power. Measured with a two-tone test by observing the power difference $\Delta_2$ between the fundamental and the IM2 product:

$$OIP2 = P_{out} + \Delta_2 \qquad IIP2 = OIP2 - G$$

#### Third Order Intercept Point (IP3)

The third order IM product grows 3 dB for every 1 dB increase in input power. Measured with a two-tone test by observing the power difference $\Delta_3$ between the fundamental and the IM3 product:

$$OIP3 = P_{out} + \frac{\Delta_3}{2} \qquad IIP3 = OIP3 - G$$


#### General Order — IPn

For an IM product of order $n$, the input and output intercept points are:

$$OIPn = P_{out} + \frac{\Delta}{n-1} \qquad IIPn = OIPn - G$$

The output power of the $n$-th order IM product as a function of input power is:

$$P_{out,\,IMn} = n \cdot P_{in} - (n-1) \cdot IIPn + G$$

The IM product grows $n$ dB for every 1 dB increase in input power.



### Output Dynamic Range

#### Upper Limit

The upper limit is determined by the linearity of the amplifier. It is the
output power at which the intermodulation products rise above the minimum C/I.

**Third order (IMD3):**

$$P_{out} = P_{in} + G \qquad P_{out,\,IM3} = 3 \cdot P_{in} - 2 \cdot IIP3 + G$$

Setting $P_{out} - P_{out,\,IM3} = CI_{min}$:

$$(P_{in} + G) - (3 \cdot P_{in} - 2 \cdot IIP3 + G) = CI_{min}$$

$$\implies P_{in,\,upper} = IIP3 - \frac{CI_{min}}{2}$$

$$\boxed{P_{out,\,upper} = IIP3 + G - \frac{CI_{min}}{2}}$$

**Second order (IMD2):**

$$P_{out} = P_{in} + G \qquad P_{out,\,IM2} = 2 \cdot P_{in} - IIP2 + G$$

Setting $P_{out} - P_{out,\,IM2} = CI_{min}$:

$$(P_{in} + G) - (2 \cdot P_{in} - IIP2 + G) = CI_{min}$$

$$\implies P_{in,\,upper} = IIP2 - CI_{min}$$

$$\boxed{P_{out,\,upper} = IIP2 + G - CI_{min}}$$

Note that for IMD2 the upper limit degrades twice as fast with $CI_{min}$
compared to IMD3.


#### Lower Limit

The lower limit is the output power at which the carrier drops below the
noise floor by the minimum SNR required for the system:

$$P_{out,\,lower} = N_{out} + SNR_{min}$$

where $N_{out}$ is the output noise power:

$$N_{out} = NF + 10\log_{10}(kTB) + G$$



### Output Dynamic Range

$$DR = P_{out,\,upper} - P_{out,\,lower}$$


## Input Dynamic Range

The input dynamic range is the range of input power levels over which the
system operates correctly — above the sensitivity and below the level at
which intermodulation products exceed the minimum C/I.

$$DR_{in} = P_{in,\,upper} - S$$

---

#### Lower Limit — Sensitivity

The lower limit is the minimum detectable input signal (sensitivity),
defined as the input-referred noise floor plus the minimum SNR required:

$$S = kTB + NF + SNR_{min}$$

where $kTB$ is the thermal noise power at the input:

$$kTB\,(\text{dBm}) = 10\log_{10}(k \cdot T \cdot B) + 30$$

---

#### Upper Limit

The upper limit is the input power at which the intermodulation products
rise above the minimum C/I. Referred to the input from the output upper
limit (assuming no compression):

$$P_{in,\,upper} = P_{out,\,upper} - G = IIPn - \frac{CI_{min}}{n-1}$$

---

### Input Dynamic Range

Combining both limits:

$$\boxed{DR_{in} = IIPn - \frac{CI_{min}}{n-1} - kTB - NF - SNR_{min}}$$

Note that without compression $DR_{in} = DR_{out}$, since the gain $G$
cancels out in both limits — a useful sanity check.

> **Variables**
> | Symbol | Description |
> |---|---|
> | $S$ | Sensitivity — minimum detectable input power (dBm) |
> | $kTB$ | Thermal noise power at the input (dBm) |
> | $NF$ | Noise figure (dB) |
> | $SNR_{min}$ | Minimum signal-to-noise ratio required (dB) |
> | $CI_{min}$ | Minimum carrier-to-interference ratio required (dB) |
> | $IIPn$ | Input intercept point of order $n$ (dBm) |
> | $G$ | System gain (dB) |
> | $n$ | Order of the intermodulation product |

### Python Script

You can use the following script to calculate the intercept diagram:

```{raw} html
<div style="height: 300px; overflow-y: auto; border: 1px solid #ccc; border-radius: 6px;">
```
```{literalinclude} Interception_Diagram.py
:language: python
```
```{raw} html
</div>
```

You'll get something like this:

```{figure} InterceptionDiagram.png
---
class: with-border
Interception Diagram example
```
