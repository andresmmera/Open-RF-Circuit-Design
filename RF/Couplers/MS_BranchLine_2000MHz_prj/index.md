# Branch-Line Coupler

## Introduction

This is a microstrip Branch-Line coupler designed over a 20 mil RO4003C.

The Branch-Line coupler is one of the easiest couplers to design, and it is very common 
and well known in the literature. It consists of four λ/4 transmission lines: the series 
lines are Z₀/√2 Ω and the shunt lines are Z₀ Ω.

```{figure} BranchLine-Schematic.png
:alt: Branch-line Schematic
```


### Features
- Simple design
- Easy to fabricate in microstrip
- Good port isolation
- Equal power split (3 dB)
- 90° phase difference between output ports
- All ports are matched simultaneously
```{warning}
- Narrow bandwidth (~10–20%)
- Large size at low frequencies
```

### References

1. David M. Pozar, *Microwave Engineering*, 4th Edition, 2012. Chapter 7.5
2. Unknown Editor, *Microwaves101*, [Branchline Couplers](https://www.microwaves101.com/encyclopedias/branchline-couplers)

## Specifications

| Feature          |  Value        |
|-----------|----------|
| frequency | 2000 MHz |

## Design Procedure

### 1. Ideal Transmission Line Implementation
As a first approach, the Branch-Line is designed with ideal transmission lines to see its behavior. This can be done in Qucs-S using the Qucsator-RF backend.

```{figure} images/1_TLIN/1_TLIN_Schematic.png
---
class: with-border
---

Branch-Line schematic with ideal transmission lines
```

```{figure} images/1_TLIN/1_TLIN_Magnitude.png
---
class: with-border
---

Branch-Line with ideal transmission lines. Magnitude response
```


```{figure} images/1_TLIN/1_TLIN_DPhase.png
---
class: with-border
---

Branch-Line with ideal transmission lines. Phase difference between outputs
```

### 2. Microstrip (MS) Line Implementation
The ideal transmission lines are replaced by microstrip transmission lines. The synthesis can be done with the Transmission Line tool from Qucs-S or directly with the RF Circuit Synthesis Tools embedded in the Qucs-S S-Parameter Viewer, both tools are included in the Qucs-S suite.
### 2.1 MS: No Junctions nor Feed Lines
The ideal transmission lines by microstrip lines. The junctions and the feed lines are not included at this stage. This approach will let to evaluate the impact of the junctions and also, the feedlines later.

### 2.2 MS: Add Junctions and Feed Lines
The tee junctions and the feed lines are added. Notice that the tee junctions pull the center frequency down. The feed lines have no effect on the response as they are 50 Ω lines, they only add some insertion loss.

### 2.3 MS: Fine Tuning
The loading of the junctions need to be corrected to have the Branch-Line coupler working at 2000 MHz. The circuit variables are tuned for this

### 3. EM simulation
Once the microstrip model is good enough, then it's convenient to validate it with an EM tool. [EMerge software](https://www.emerge-software.com/) is particularly well suited for this. The reader is encourage to install [EMerge from GitHub](https://github.com/FennisRobert/EMerge) and give it a try.

The model definition is as follows:

```{figure} images/3_EM/Branch-line-geometry.png
:alt: Branch-line coupler geometry
```

And this is the Python script for running the simulation:

```{raw} html
<div style="height: 300px; overflow-y: auto; border: 1px solid #ccc; border-radius: 6px;">
```
```{literalinclude} Emerge Scripts/1 - First approach/branchline.py
:language: python
```
```{raw} html
</div>
```

### 3.1 Use design variables for 2.2
First, the system is modelled using the design variables obtained from step 2.2 as the input


### 3.2 Fine-tuning
The reader may notice that the center frequency of the Branch-Line coupler is shifted towards high frequencies, so some retuning is needed.


## Substrate documentation
```{raw} html
<iframe
  src="../../../RO4000%20Laminates%20RO4003C%20and%20RO4350B%20-%20Data%20Sheet.pdf"
  width="100%"
  height="600px"
  style="border: 1px solid #ccc; border-radius: 6px;">
  <a href="../../../RO4000%20Laminates%20RO4003C%20and%20RO4350B%20-%20Data%20Sheet.pdf">Download PDF</a>
</iframe>
```
