# Canonical Filters
Canonical filters are obtained from the lowpass (LP) prototype. The LP prototype coefficients [1] are normalized for $Z_0 = 1 \, \Omega$ and $\omega_c = 1$ rad/s. [1] contains extensive tables with lowpass coefficients for different responses. Through scaling, the prototype response can be adjusted to any $Z_0$ and $f_c$. Highpass, bandpass and bandstop can be easily obtained from circuit transformations.

The lowpass prototype can start with a series or a shunt element. Yet having the same filtering response, this feature determines the value of the input impedance at high frequecies (short or open).

## Lowpass filters

Let's see how Canonical Filters are designed through an examples

|Parameter|Value|
|---|---|
|Cutoff frequency| 500 MHz|
|System impedance| 50 Ohm|
|Response type| Chebyshev o3, ripple = 0.01 dB|

The lowpass prototype coefficients for a Chebyshev o3 with ripple of 0.01 dB are:

|g0|g1|g2|g3|g4|
|---|---|---|---|---|
|1|0.629180|0.970282|0.629180|1|

Notice that $g_0$ and $g_{N+1} = g_4$ are the coeffients of the source and the load impedances, respectively.

```{figure} images/1_Canonical_Filters/1_1_Lowpass/1_1_Lowpass_Prototype.png
---
class: with-border
---

Canonical Filters. Lowpass Prototype
```

The coefficients must be scaled in terms of impedance and frequency:

### Impedance scaling

|Series inductors|Shunt capacitors|
|---|---|
|$L_i^{Z)} = g_i · Z_0$| $C_i^{Z)} = g_i / Z_0$|


So, in this example:

|ZS|C1|L2|C3|ZL|
|---|---|---|---|---|
|50|0.0126|48.5|0.0126|50|


### Frequency scaling

|Series inductors|Shunt capacitors|
|---|---|
|$L_i^{F)}= = g_i · \omega$| $C_i^{F)} = g_i · \omega$|


In this example:

|ZS|C1|L2|C3|ZL|
|---|---|---|---|---|
|50|4 pF|15.4 nH|4 pF|50|

```{figure} images/1_Canonical_Filters/1_1_Lowpass/1_1_Lowpass.png
---
class: with-border
---

Canonical Filters. Lowpass filter with scaling
```

## Highpass Filters

The highpass implementation can be obtained through the following transformation:

|Lowpass Prototype|Highpass|
|---|---|
|Inductor ($L'$)| Capacitor ($C = \frac{1}{L' · Z_0 · \omega_0}$)|
|Capacitor ($C'$)|Inductor ($L = \frac{Z_0}{C' · \omega_0}$)|

In the example, the highpass transformation yields:

|ZS|L1|C2|L3|ZL|
|---|---|---|---|---|
|50|25.3 nH|6.6 pF|25.3 nH|50|

```{figure} images/1_Canonical_Filters/1_2_Highpass/1_2_Highpass.png
---
class: with-border
---

Canonical Filters. Highpass transformation
```

## Bandpass Filters

The bandpass implementation can be obtained through the following transformation:

|Lowpass Prototype|Bandpass|
|---|---|
|Inductor ($L'$)| Series LC resonator ($L = \frac{a · Z_0 · L'} {\omega_0}$, $C = \frac{1}{a · C' · Z_0 · \omega_0}$)|
|Capacitor ($C'$)|Parallel LC resonator ($L = \frac{Z_0}{a · C' · \omega_0}$, $C = \frac{a · C'} {Z_0 · \omega_0}$)|


where

```{math}
a = \frac{f_0}{BW}
```


In this example, the bandpass transformation yields ($BW = 50 MHz$):

|ZS|Shunt (L1, C1)|Series (L2, C2)|Shunt (L3, C3)|ZL|
|---|---|---|---|---|
|50|(2.5 nH, 40 pF)|(154 nH, 6.5 pF)|(2.5 nH, 40 pF)|50|

```{figure} images/1_Canonical_Filters/1_3_Bandpass/1_3_Bandpass.png
---
class: with-border
---

Canonical Filters. Bandpass transformation
```

## Bandstop Filters

The bandstop implementation can be obtained through the following transformation ($BW = 50 MHz$):

|Lowpass Prototype|Bandpass|
|---|---|
|Inductor ($L'$)| Parallel LC resonator ($L = \frac{a · Z_0} {L' · \omega_0}$, $C = \frac{C' }{a · Z_0 · \omega_0}$)|
|Capacitor ($C'$)|Series LC resonator ($L = \frac{Z_0 * C'}{a · \omega_0}$, $C = \frac{a} {Z_0 · C' · \omega_0}$)|

where

```{math}
a = \frac{f_0}{BW}
```

In this example, the bandpass transformation yields:

|ZS|Shunt (L1, C1)|Series (L2, C2)|Shunt (L3, C3)|ZL|
|---|---|---|---|---|
|50|(253 nH, 0.4 pF)|(1.5 nH, 65.6 pF)|(253 nH, 0.4 pF)|50|

```{figure} images/1_Canonical_Filters/1_4_Bandstop/1_4_Bandstop.png
---
class: with-border
---

Canonical Filters. Bandstop transformation
```
