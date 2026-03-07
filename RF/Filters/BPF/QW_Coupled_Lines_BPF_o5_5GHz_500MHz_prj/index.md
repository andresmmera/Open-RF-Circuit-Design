# Microstrip Coupled Line Filter

## Introduction

This is a tutorial on how to build a microstrip coupled line filter

The project files are available [here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/RF/Filters/BPF/QW_Coupled_Lines_BPF_o5_5GHz_500MHz_prj)

The design goals were chosen so that the design can be simulated in Sonnet Lite. This software has a memory limitation of 64 MB, so designs like an o5 or a o7 filter are too big for it.

| Parameter | Value | Band |
|---|---|---|
|Insertion loss | < 1 dB | [4.8, 5.2] GHz |
|Stopband rejection | > 25 dB |< 4 GHz, > 6 GHz|
|Return loss | < -15 dB |[4.8, 5.2] GHz |



### Ideal Coupled Transmission Lines

The design starts by synthesizing the filter with ideal coupled lines. This can be done using the Filter Synthesis Tool from the Qucs-S suite.



```{figure} images/1_Ideal_Coupled_Lines/1_1_IdealTranmissionLines.png
---
class: with-border
---

Quarter-wave Coupled-Line Filter with ideal transmission lines
```

### Microstrip Implementation

#### Synthesis

The filter is to be implemented on a 20 mil RO4003C substrate, whose properties are:

|Property|Value|
|---|---|
|Dielectric Permittivity|3.55|
|Dissipation Factor (tand)|0.0027|

The design must be compatible with the capabilities of a standard PCB manufacturing facility, so it is important to keep the separation between the first two lines wide enough. This minumum gap could be something above 100 μm.

Notice that wider passbands would require tighter coupling between the first (and last) pair of coupled lines and the gap would be etched correctly in a real PCB manufacturing process.

The Qucs-S Filter Tool very convenient here as it can also synthesize MS coupled lines.

```{figure} images/1_Ideal_Coupled_Lines/1_2_MS_Coupled_Lines_Synthesis.png
---
class: with-border
---

Synthesis of MS coupled line filter with the Qucs-S Filter Tool
```

```{figure} images/1_Ideal_Coupled_Lines/1_3_MS_Coupled_Lines_Simulation.png
---
class: with-border
---

Simulation of the MS coupled filter generated with the Qucs-S Filter Tool
```

#### Simulation in Sonnet Lite

Once the filter response is tuned, the circuit is laid-out and simulated in Sonnet Lite. Care must be taken in the box size definition to avoid unintended resonant modes caused by the bounding conditions.

##### Layout

After tuning the response for meeting the design parameters, the filter dimmensions slightly differ from those obtained from the MS models simulation

|Parameter|MS models|Sonnet Lite|
|---|---|---|
|L1|8.93 mm|8.93 mm|
|S1|103 μm|103 μm|
|W1|760 μm|760 μm|
|L2|8.78 mm|8.78 mm|
|S2|510 μm|510 μm|
|W2|1.08 mm|1.09 mm|



```{figure} images/2_Sonnet_Lite/2_1_Layout.png
---
class: with-border
---

Layout simulated in Sonnet Lite
```

##### Insertion Loss


```{figure} images/2_Sonnet_Lite/2_2_IL_and_RL_broadband.png
---
class: with-border
---

Insertion loss and return loss. Broadband view.
```

```{figure} images/2_Sonnet_Lite/2_2_IL_and_RL_passband.png
---
class: with-border
---

Insertion loss and return loss. Passband detail.
```

##### Group Delay

```{figure} images/2_Sonnet_Lite/2_3_Group_Delay.png
---
class: with-border
---

Group delay
```

##### Comparison with Microstrip models

```{figure} images/3_Comparison/3_Comparison_SonnetLine_vs_Qucsator.png
---
class: with-border
---

Comparison between the results obtained in Sonnet Lite and Qucsator
```


### Update

I have recently simulated this design using EMerge sofware. The results are very similar, but I had to do some adjustments in the geometry.

|Parameter|MS models|Sonnet Lite| EMerge
|---|---|---|---|
|L1|8.93 mm|8.93 mm|8.93 mm|
|S1|103 μm|103 μm|*110 μm*|
|W1|760 μm|760 μm|760 μm|
|L2|8.78 mm|8.78 mm|8.78 mm|
|S2|510 μm|510 μm|*350 μm*|
|W2|1.08 mm|1.09 mm|1.1 mm|

This is the Python script for the EMerge simulation:

```{raw} html
<div style="height: 300px; overflow-y: auto; border: 1px solid #ccc; border-radius: 6px;">
```
```{literalinclude} EMerge Scripts/2 - Fine Tuning/BPF.py
:language: python
```
```{raw} html
</div>
```

and this is the script for post-processing:

```{raw} html
<div style="height: 300px; overflow-y: auto; border: 1px solid #ccc; border-radius: 6px;">
```
```{literalinclude} EMerge Scripts/2 - Fine Tuning/postprocessing.py
:language: python
```
```{raw} html
</div>
```


The results are shown below:

```{figure} images/4_EMerge/4_1_Broadband.png
---
class: with-border
---

EM simulation results from EMerge. Broadband response.
```


```{figure} images/4_EMerge/4_2_Passband.png
---
class: with-border
---

EM simulation results from EMerge. Passband detail.
```
