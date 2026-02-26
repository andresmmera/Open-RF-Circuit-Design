# Stubbed Microstrip Coupled Line Filter

## Introduction

This is a tutorial on how to build a stubbed microstrip coupled line filter. This is a variant of the classical coupled-line filter where the stubs are added so as to have a lower coupling in the input and output coupled lines. This leads to a significantly wider gap in these lines with respect to the classical QW coupled lines filter, which makes this filter more suitable for fabrication.

The design goals are the same as in the [classical quarter-wavelength coupled line example](/RF/Filters/BPF/QW_Coupled_Lines_BPF_o5_5GHz_500MHz_prj/index)).

| Parameter | Value | Band |
|---|---|---|
|Insertion loss | < 1 dB | [4.8, 5.2] GHz |
|Stopband rejection | > 25 dB |< 4 GHz, > 6 GHz|
|Return loss | < -15 dB |[4.8, 5.2] GHz |

The project files are available [here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/RF/Filters/BPF/QW_Coupled_Lines_w_stubs_BPF_o5_5GHz_500MHz_prj)


### Microstrip Implementation

The design starts with the classical coupled-line filter (without stubs) and then open-circuit stubs are added at the input and at the output.

```{figure} images/1_Microstrip_Models/1_1_Microstrip_Models.png
---
class: with-border
---

MS Quarter-wave Coupled-Line Filter with stubs
```

After this, the circuit was drawn and simulated in Sonnet Lite. Care must be taken in the box size definition to avoid unintended resonant modes caused by the bounding conditions. Also, some adjustments were made to fit the Sonnet results to the filter prototype response. 

```{figure} images/2_Sonnet/2_1_SonnetLayout.png
---
class: with-border
---

MS Quarter-Wave Coupled-Line Filter Layout in Sonnet Lite
```

```{figure} images/2_Sonnet/2_2_InsertionLoss_Broadband.png
---
class: with-border
---

Insertion Loss. Broadband response.
```

```{figure} images/2_Sonnet/2_2_InsertionLoss_Passband.png
---
class: with-border
---

Insertion Loss. Passband detail.
```

```{figure} images/2_Sonnet/2_3_GroupDelay.png
---
class: with-border
---

Group Delay
```

The following figure compares the response of the stubbed coupled-line filter with its classical version (without stubs). Notice that the stubbed version has better rejection, but also higher insertion loss in passband,

```{figure} images/2_Sonnet/2_4_Comparsison_wrt_wstubs.png
---
class: with-border
---

Comparison between the stubbed coupled line filter and its classical version (without stubs)
```
