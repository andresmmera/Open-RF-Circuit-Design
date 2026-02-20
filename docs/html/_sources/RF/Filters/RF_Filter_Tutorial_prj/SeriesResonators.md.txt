# Series Resonators Direct Coupled Filters

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


### 2) Calculate the reactance slope
Following the procedure in [2], calculate the reactance slope as:

```{math}
x = \frac{\omega_0}{2} \frac{dX}{d\omega}; \omega_0 = \omega_0 · L
```

In this example, we get:

|Resonator|x ($\Omega$)|
|---|---|
|1|31.4|
|2|31.4|
|3|31.4|


### 3) Calculate the impedance inverters

Now, it's time to calculate the impedance inverters between resonators (and the terminations)

*First inverter: Between source and the first resonator*

```{math}
K_{01} = \sqrt{\frac{Z_S · x_1 · \omega}{g_0 · g_1}}
```

*Inverters between resonators*

```{math}
K_{i, i+1} = \omega · \sqrt{\frac{x_{i} · x_{i+1}}{g_i  · g_{i+1}}}
```

*Last inverter: Between the last resonator and the load*


```{math}
K_{n, n+1} = \sqrt{\frac{Z_L · x_n · \omega}{g_n · g_{n+1}}}
```
In this example:

|Inverter|K|
|---|---|
|01|15.8|
|12|4.02|
|23|4.02|
|34|15.8|


### 4) Calculate the resonators' impedance

The impedance of each resonator can be calculate from the impedance at the previous resonator, starting from either the source or the load termination:

#### 4.1) First resonator

Given the value of the source termination (e.g. 50 Ohm), the admitance of the resonator is:

```{math}
 Z_1 = \frac{K_{01}^2} {Z_S}
```


#### 4.2) Second resonator
Once having $Z_1$, proceed for the second resonator:

```{math}
Z_2 = \frac{K_{12}^2} {Z_1}
```

#### 4.3) Third resonator
and the same for the last resonator


```{math}
 Z_3 = \frac{K_{23}^2} {Z_2}
```

The same applies for any number of resonators.


In this example:

|Resonator|Z ($\Omega$)|
|---|---|
|1|4.99|
|2|3.24|
|3|4.99|


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

If choosing this approach on the example, the characteristic impedances of the lines is $K$ in the table above.

```{figure} images/2_DirectCoupled/2_3_SeriesResonators/2_3_TransmissionLines.png
---
class: with-border
---

Series resonators direct-coupled filter with transmission line inverters
```
#### 5.2) Capacitive Tee-type inverter
Being the resonators in a series arrangement, the natural choice is to use a tee-type inverter, since the series arms have negative values and they can be absorbed into the resonator. Let's see an example:

```{math}
 C = \frac{1}{\omega_0 · \sqrt{R_S · R_L}}
```

```{figure} images/2_DirectCoupled/2_1_ImpedanceInverters/2_1_TeeC.png
---
class: with-border
---

Capacitive Tee-type Impedance Inverter
```

If choosing this approach on the example, the coupling capacitances are:

|Line|Capacitance (pF)|
|---|---|
|C12|79.2|
|C23|79.2|

The filter need to be matched to the source and load terminations with, e.g., an L-section.

The whole design procedure with capacitive Tee-type inverters is shown in the following image:

```{figure} images/2_DirectCoupled/2_3_SeriesResonators/2_3_TeeC.png
---
class: with-border
---

Series resonators direct-coupled filter with capacitive Tee-type inverters
```


#### 5.3) Inductive Tee-type inverter

```{math}
 L = \frac{\sqrt{R_S · R_L}}{\omega_0}
```

```{figure} images/2_DirectCoupled/2_1_ImpedanceInverters/2_1_TeeL.png
---
class: with-border
---

Inductive Tee-type Impedance Inverter
```

If choosing this approach on the example, the coupling inductances are:

|Line|Inductance (nH)|
|---|---|
|L12|1.28|
|L23|1.28|

The filter need to be matched to the source and load terminations with, e.g., an L-section.

The whole design procedure with inductive Tee-type inverters is shown in the following image:


```{figure} images/2_DirectCoupled/2_3_SeriesResonators/2_3_TeeL.png
---
class: with-border
---

Series resonators direct-coupled filter with inductive Tee-type inverters
```



### References

1. S. B. Cohn, "Direct-Coupled-Resonator Filters," in Proceedings of the IRE, vol. 45, no. 2, pp. 187-196, Feb. 1957, doi: 10.1109/JRPROC.1957.278389.

2. George L. Matthaei, L. Young, E. M. Jones. "Microwave Filters, Impedance-Matching Networks, and Coupling Structures".

3. Anatol I. Zverev, "Handbook of Filter Synthesis". John Wiley and Sons Inc. 1967
