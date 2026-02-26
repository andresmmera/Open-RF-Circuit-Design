# Lumped HPF with Printed Inductors

## Introduction

This is a tutorial on how to build a lumped highpass filter with printed inductors

The project files are available [here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/RF/Filters/HPF/Lumped_HPF_2_GHz_prj)

| Parameter | Value | Band |
|---|---|---|
|Insertion loss | < 1 dB | [2, 4] GHz |
|Stopband rejection | > 30 dB | < 1.5 GHz|
|Return loss | < -15 dB | [2, 4] GHz |

A 2-poles elliptic filter satisfies the requirements above. The filter prototype is synthesized using the Qucs-S SP Viewer RF synthesis tools. Then Sonnet Lite, Qucs-S, and Kicad are used.

### Ideal 2 GHz elliptic HPF Circuit


```{figure} images/1_Ideal_Lumped/1_1_Elliptic_HPF_Schematic.png
---
class: with-border
---

Ideal elliptic HPF 2 GHz schematic
```



```{figure} images/1_Ideal_Lumped/1_2_Elliptic_HPF_Simulation.png
---
class: with-border
---

Ideal elliptic HPF 2 GHz Qucs-S simulation
```

The next step is to synthesize the inductors with PCB traces. A 20-mil RO4003C substrate will be used. As a first approach the MLIN component on the RO4003C substrate is used for estimating the length of the traces. The width is set to 200 μm to minize the length of the trace, while keeping a a reasonable width for fabrication.



#### RO4003C properties

|Property|Value|
|---|---|
|Dielectric Permittivity|3.55|
|Dissipation Factor (tand)|0.0027|





#### Simulation in Sonnet Lite

The inductors are laid out into Kicad with a meander shape in order to have a compact design.

```{figure} images/2_EM/2_1_Meander_Sonnet.png
---
class: with-border
---

L1 microstrip meander implementation in Sonnet Lite
```

Once the meander is simulated in Sonnet Lite, it is convenient to compare their performance with the ideal inductors. For doing this, the S-parameter data obtained from Sonnet Lite are exported into a Touchstone file and then compared those of an ideal inductor in Qucs-S.

```{figure} images/2_EM/2_2_L1_Sonnet_vs_ideal_inductor.png
---
class: with-border
---

Analysis of L1 after being synthesized as a meander
```

```{figure} images/2_EM/2_3_L2_Sonnet_vs_ideal_inductor.png
---
class: with-border
---

Analysis of L2 after being synthesized as a meander
```

Both inductors have an inductance sufficiently close to their ideal counterparts. The Q factor of both inductors at the attenuation poles frequency are good enough to make decent resonators.


As the meander inductors are no longer ideal inductances, it is need to readjust the filter capacitors so as the elliptic shape is preserved. Also it is needed to replace the ideal capacitors by commercial SMD parts. In this sense, Murata SMD ceramic capacitors will be used. Murata Simsurfing is a nice tool and allows the download of S2P files that can be used in Qucs-S.


```{figure} images/3_HPF/3_1_HPF_with_MurataCaps.png
---
class: with-border
---

Elliptic filter simulation with printed inductors and commercial SMD caps
```

Sonnet Lite does not allow to include ports inside the simulation box, just only on the box edges. Consequently, having SMD capacitors in the design imply that the filter components must be simulated as independent unit. Unfortunately, this approach misses EM couplings between the inductors and other traces, but the result should be close enough for a 2 GHz HPF. Proceeding this way, the feed lines, and GND via holes are simulated separatedly and then after exporting the S-parameters, simulated all together inside Qucs-S.

```{figure} images/3_HPF/3_2_HPF_Complete.png
---
class: with-border
---

HPF with EM-simulated feed lines, unions, and GND vias
```

