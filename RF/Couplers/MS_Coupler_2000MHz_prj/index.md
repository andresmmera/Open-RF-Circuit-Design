# Microstrip Coupler

## Introduction

This is a microstrip coupler designed over a 20 mil RO4003C using a single section of coupled microstrip lines.

The project files are available [here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/RF/Couplers/MS_Coupler_2000MHz_prj)

```{figure} images/MS_Coupler_Diagram.png
:alt: Microstrip Coupler
```


### Design Equations

```{math}
Z_{0e} = Z_0 \sqrt{\frac{1+C}{1-C}}
```

```{math}
Z_{0o} = Z_0 \sqrt{\frac{1-C}{1+C}}
```

### References

1. David M. Pozar, *Microwave Engineering*, 4th Edition, 2012. Chapter 7.6


### Features
- Simple design
- Easy to fabricate in microstrip
- Good port isolation
- Relatively wideband
- All ports are matched simultaneously
```{warning}
- High couplings (< 10 dB) require very small gaps.
- The coupling depends a lot on the gap, so manufacturing tolerances may have a significant on it.
- Large size at low frequencies
```

## Specifications

| Feature          |  Value        |
|-----------|----------|
| Band | [1500, 2800] MHz  |
| Insertion Loss | 0.3 ± 0.1 dB |
| Coupling | 15.5 ± 0.5 dB |
| Return Loss | <-20 dB |
| Isolation | >16 dB |

## Design Procedure

### 1. Ideal Transmission Line Implementation
As a first approach, the coupler is designed with ideal transmission lines by using the design equations. This can be done in Qucs-S using the Qucsator-RF backend.



```{figure} images/1_TLIN/1_TLIN_Schematic.png
---
class: with-border
---

Coupler schematic with ideal transmission lines
```

```{figure} images/1_TLIN/1_TLIN_Magnitude.png
---
class: with-border
---

Coupler with ideal transmission lines. Magnitude response
```

### 2. Microstrip (MS) Line Implementation
The ideal transmission lines are replaced by microstrip transmission lines. The synthesis can be done with the Transmission Line tool from Qucs-S.


```{figure} images/2_MLIN/2_MLIN_Schematic.png
---
class: with-border
---

MS Coupler using Qucsator-RF models. Schematic
```

```{figure} images/2_MLIN/2_MLIN_Magnitude.png
---
class: with-border
---
MS Coupler using Qucsator-RF models. Magnitude response
```

```{figure} images/2_MLIN/2_MLIN_Magnitude_Detail.png
---
class: with-border
---
MS Coupler using Qucsator-RF models. Magnitude response (detail)
```

### 3. EM Simulation
In order to get more accurate results, it's a good practice to simulate the design using EM tools. In this cases, two free tools are being considered:
- [Sonnet Lite](https://www.sonnetsoftware.com/products/lite/). Free, runs well on Wine.
- [EMerge](https://www.emerge-software.com/) FEM & open-source. Very nice project. 🔥Check it out!🔥

#### 3.1 Sonnet Line
The model is build on the GUI of Sonnet Lite.


```{figure} images/3_EM/3_1_Sonnet/3_1_Sonnet_Model.png
---
class: with-border
---

MS Coupler Sonnet Lite modelling
```

The results obtained were the following:

```{figure} images/3_EM/3_1_Sonnet/3_1_Sonnet_Results.png
---
class: with-border
MS Coupler Sonnet Lite. Magnitude response
```

```{figure} images/3_EM/3_1_Sonnet/3_1_Sonnet_Results_Detail.png
---
class: with-border
MS Coupler Sonnet Lite. Magnitude response (detail)
```

#### 3.2 EMerge
The model is build on a Python script in a very convenient way.

```{raw} html
<div style="height: 300px; overflow-y: auto; border: 1px solid #ccc; border-radius: 6px;">
```
```{literalinclude} EMerge Scripts/1 - First Approach/Coupler_sim.py
:language: python
```
```{raw} html
</div>
```

This is how the model looks in the 3D viewer:

```{figure} images/3_EM/3_2_EMerge/3_2_EMerge_Model.png
---
class: with-border
MS Coupler Sonnet Lite. Magnitude response (detail)
```

The results are the following:

```{figure} images/3_EM/3_2_EMerge/3_2_EMerge_Results.png
---
class: with-border
MS Coupler EMerge. Magnitude response
```

```{figure} images/3_EM/3_2_EMerge/3_2_EMerge_Results_Detail.png
---
class: with-border
MS Coupler EMerge. Magnitude response (detail)
```

### Conclusion
As expected, the results obtained for the three simulators show slight differences. Which of them is the most accurate? It would be interesting to manufacture this coupler and compare this with data from a VNA.

```{figure} images/3_EM/3_EM_Comparison_Sonnet_EMerge_Qucsator.png
---
class: with-border
Comparison between the results of Qucsator-RF, EMerge and Sonnet Lite
```


