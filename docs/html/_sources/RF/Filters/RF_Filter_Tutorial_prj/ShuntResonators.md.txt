# Shunt Resonators Direct Coupled Filters

## Specifications

|Parameter|Value|
|---|---|
|Center frequency|500 MHz|
|Bandwidth|50 MHz|
|Response|Chebyshev o3, ripple = 0.01 dB|
|System impedance| 50 $\Omega$|

The lowpass prototype coefficients for a Chebyshev o3 with ripple of 0.01 dB are:

|g0|g1|g2|g3|g4|
|---|---|---|---|---|
|1|0.629180|0.970282|0.629180|1|

## Design Procedure

### 1) Design the resonators
The design starts by setting the value of one of the elements of the resonators. Let's fix the inductance to 10 nH, then to resonate at $f_c = 500 MHz$:

|Resonator|L|C|
|---|---|---|
|1|10 nH|10.1 pF|
|2|10 nH|10.1 pF|
|3|10 nH|10.1 pF|


### 2) Calculate the subsceptance slope
Following the procedure in [2], calculate the subsceptance slope as:

```{math}
b = \frac{\omega_0}{2} \frac{dB}{d\omega};  \omega_0 = \frac{1}{\omega_0 · L}
```

In this example, we get:

|Resonator|b (S)|
|---|---|
|1|0.0318|
|2|0.0318|
|3|0.0318|


### 3) Calculate the admittance inverters

Now, it's time to calculate the admitance inverters between resonators (and the terminations)

*First inverter: Between source and the first resonator*

```{math}
J_{01} = \sqrt{\frac{b_1 · \omega}{Z_S · g_0 · g_1}}
```

*Inverters between resonators*

```{math}
J_{i, i+1} = \omega · \sqrt(\frac{b_{i} · b_{i+1}}{(g_{i} · g_{i+1}})
```

*Last inverter: Between the last resonator and the load*


```{math}
J_{n, n+1} = \sqrt{\frac{b_n · \omega}{Z_L · g_n · g_{n+1}}
```
In this example:

|Inverter|J|
|---|---|
|01|0.0101|
|12|0.00407|
|23|0.00407|
|34|0.0101|


### 4) Calculate the resonators' impedances

The admitance of each resonator can be calculate from the impedance at the previous resonator, starting from either the source or the load termination:

#### 4.1) First resonator

Given the value of the source termination (e.g. 50 Ohm), the admitance of the resonator is:

```{math}
 Y_1 = \frac{J_{01}^2}{G_A} = J_{01}^2 · Z_S
```


#### 4.2) Second resonator
Once having $Y_1$, proceed for the second resonator:

```{math}
 Y_2 = \frac{J_{12}^2}{Y_1}
```

#### 4.3) Third resonator
and the same for the last resonator


```{math}
 Y_3 = \frac{J_{23}^2}{Y_2}
```

The same applies for any number of resonators.

Provided that $Z = \frac{1}{Y}$, we can easily get the resonator impedances

In this example:

|Resonator|Y (S)|Z ($\Omega$)|
|---|---|---|
|1|0.00506|198|
|2|0.00328|305|
|3|0.00506|198|


### 5) Design the inverters

An impedance inverter is no more than a matching network. The following inverters are useful when desigining direct-coupled filters with shunt resonators

#### 5.1) $\lambda/4$ Transmission Lines

The characteristic impedance of a $\lambda/4$ transmission line for matching a (real) source impedance $R_S$ to a (real) load impedance $R_L$ is:

```{math}
 Z_{inv} = \sqrt{R_S · R_L}
```

```{figure} images/2_DirectCoupled/2_1_ImpedanceInverters/2_1_TransmisionLine.png
---
class: with-border
---

$\lambda/4$ Transmission Line Impedance Inverter
```

If choosing this approach on the example, the characteristic impedance of the lines is:

|Line|$Z_0 (\Omega)$|
|---|---|
|Z01|99.4|
|Z12|245|
|Z23|245|
|Z34|99.4|

```{figure} images/2_DirectCoupled/2_2_ShuntResonators/2_2_TransmisionLineInverters.png
---
class: with-border
---

Shunt resonators direct-coupled filter with transmission line inverters
```

#### 5.2) Capacitive $\pi$-type inverter

$\pi$-type inverters are very popular for direct-coupled filters. They are very compact since the shunt branches take negative values and this is absorbed by the shunt resonators, so they can be physically implemented with one single element. This is good for minimizing the part count, and the insertion loss as well.

All the three capacitances take the same capacitance value (shunt branches are negative!). For matching a (real) source impedance $R_S$ to a (real) load impedance $R_L$, C is:


```{math}
 C = \frac{1}{\omega_0 · \sqrt{R_S · R_L}}
```

```{figure} images/2_DirectCoupled/2_1_ImpedanceInverters/2_1_PiC.png
---
class: with-border
---

Capacitive $\pi$-type Impedance Inverter
```

If choosing this approach on the example, the coupling capacitances are:

|Line|Capacitance (pF)|
|---|---|
|C12|1.3|
|C23|1.3|

Since the terminations are pure real impedances, this inverter cannot be use (as it's not possible to absorb the negative capacitance). The L-section matching may be used.

The whole design procedure with capacitive $\pi$-type inverters is shown in the following image:

```{figure} images/2_DirectCoupled/2_2_ShuntResonators/2_2_PiC.png
---
class: with-border
---

Shunt resonators direct-coupled filter with capacitive $\pi$-type inverters
```

As you may have expected, the use of capactitative inverters provide high rejection to low frequecies and relatively low rejection at high frequencies.


#### 5.3) Inductive $\pi$-type inverter

```{math}
 L = \frac{\sqrt{R_S · R_L}}{\omega_0}
```

```{figure} images/2_DirectCoupled/2_1_ImpedanceInverters/2_1_PiL.png
---
class: with-border
---

Inductive $\pi$-type Impedance Inverter
```

If choosing this approach on the example, the coupling inductances are:

|Line|Inductance (nF)|
|---|---|
|L12|78.2|
|L23|78.2|

Again, the filter need to be matched to the source and load terminations with, e.g., an L-section.

The whole design procedure with $\pi$-L inverters is shown in the following image:

```{figure} images/2_DirectCoupled/2_2_ShuntResonators/2_2_PiL.png
---
class: with-border
---

Shunt resonators direct-coupled filter with inductive $\pi$-type inverters
```


### References

1. S. B. Cohn, "Direct-Coupled-Resonator Filters," in Proceedings of the IRE, vol. 45, no. 2, pp. 187-196, Feb. 1957, doi: 10.1109/JRPROC.1957.278389.

2. George L. Matthaei, L. Young, E. M. Jones. "Microwave Filters, Impedance-Matching Networks, and Coupling Structures".

3. Anatol I. Zverev, "Handbook of Filter Synthesis". John Wiley and Sons Inc. 1967
