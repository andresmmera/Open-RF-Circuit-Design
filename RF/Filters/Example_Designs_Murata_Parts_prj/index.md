# RF Filters with Murata parts

## Introduction

This project shows how to simulate RF filters using pspice models for Murata components.

The project files are available [here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/RF/Filters/Example_Designs_Murata_Parts_prj)

A small library with G0201 capacitors and G0603 inductors is included in the project directory.


### Highpass Example

|Parameter|Value|
|---|---|
|Cutoff frequency|500 MHz|
|Response|Chebyshev o5, ripple = 0.01 dB|
|System impedance| 50 $\Omega$|

```{figure} images/1_HPF/1_1_HPF.png
---
class: with-border
---

Lumped HPF with Murata parts (pspice models)
```
    
### Direct Coupled BPF

|Parameter|Value|
|---|---|
|Center frequency|500 MHz|
|Bandwidth|100 MHz|
|Response|Chebyshev o3, ripple = 0.01 dB|
|System impedance| 50 $\Omega$|

```{figure} images/2_BPF/2_1_BPF.png
---
class: with-border
---

Lumped BPF with Murata parts (pspice models)
```

### References

1. S. B. Cohn, "Direct-Coupled-Resonator Filters," in Proceedings of the IRE, vol. 45, no. 2, pp. 187-196, Feb. 1957, doi: 10.1109/JRPROC.1957.278389.

2. George L. Matthaei, L. Young, E. M. Jones. "Microwave Filters, Impedance-Matching Networks, and Coupling Structures".

3. Anatol I. Zverev, "Handbook of Filter Synthesis". John Wiley and Sons Inc. 1967
