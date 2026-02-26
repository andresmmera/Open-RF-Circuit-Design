# Microstrip Quarter-Wave Bandstop Filter

## Introduction

This is a tutorial on how to build a microstrip Quarter-Wave BSF.

The project files are available [here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/RF/Filters/BSF/QW_Lines_BSF_5GHz_prj)

| Parameter | Value | Band |
|---|---|---|
|Insertion loss | < 1 dB | < 4 GHz |
|Stopband rejection | > 20 dB | [4.5; 5.3] GHz|
|Return loss | < -15 dB |<4 GHz |



### Ideal Coupled Transmission Lines

The design starts by synthesizing the filter with ideal transmission lines. This can be done using the Filter Synthesis Tool from the Qucs-S suite.


```{figure} images/1_Ideal_Transmission_Lines/1_IdealTranmissionLines.png
---
class: with-border
---

Quarter-wavelength BSF. Simulation with ideal transmission lines
```

### Microstrip Implementation

#### Synthesis

The filter is to be implemented on a 20 mil RO4003C substrate, whose properties are:

|Property|Value|
|---|---|
|Dielectric Permittivity|3.55|
|Dissipation Factor (tand)|0.0027|



The Qucs-S Filter Tool very convenient here as it can also synthesize MS transmission lines.

```{figure} images/2_MS_Lines/2_1_MS_Lines_Filter.png
---
class: with-border
---

Simulation of the Quarter-Wave BSF with microstrip lines
```

#### Simulation in Sonnet Lite

Once the filter response is tuned, the circuit is laid-out and simulated in Sonnet Lite. Care must be taken in the box size definition to avoid unintended resonant modes caused by the bounding conditions.

##### Layout

```{figure} images/3_Sonnet_Lite/3_1_Layout.png
---
class: with-border
---

Layout simulated in Sonnet Lite
```
The filter dimmensions are the following:

|Parameter|Dimmensions|
|---|---|
|W0|1.1 mm|
|$\lambda/4$|10.5 mm|
|W1|100 μm|
|W2|270 μm|
|W3|100 μm|


##### Insertion Loss


```{figure} images/3_Sonnet_Lite/3_2_InsertionLoss.png
---
class: with-border
---

Insertion loss and return loss. Broadband view.
```

##### Group Delay


```{figure} images/3_Sonnet_Lite/3_3_GroupDelay.png
---
class: with-border
---

Group Delay
```

##### Comparison with MS models

The following graphs shows a comparison between the response obtained with Qucsator and that obtained from EM simulation in Sonnet Lite. As expected, the cutoff was pulled towards lower frequencies in the EM simulation. The insertion loss is also higher.

```{figure} images/3_Sonnet_Lite/3_4_Comparison_wrt_Qucsator.png
---
class: with-border
---

Group Delay
```

