# How to use a MOSFET as a Switch

## Introduction

MOSFETs are typically used as switches to turn on or off a circuit based on a digital input. Their main advantage over BJTs is that they require little current to operate (the input impedance is very high). This makes them particularly suitable to be driven from the GPO of a microcontroller. They also have a very low channel resistance, which makes them suitable for handling high current loads.

The project files are available [here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/General_Electronics/MOSFET_switch_prj)


## Comparison over BJTs

|Feature|BJT|MOSFET|
|---|---|---|
|Drive|Current driven|Voltage driven|
|Drive power|Higher|Low|
|Swithching time|Low|Low|
|Temperature stability|Poorer, depends on $h_{fe}$|High|

## Low-Side and High-Side Switches

```{figure} images/High-side_vs_Low-side_switch.png
---
class: with-border
---

High-side and low-side switch configuration
```





## PMOSFET Devices

The PMOSFET devices work as follows:

**ON mode**
```{math}
 V_{GS} < V_{th}
 ```
 
**OFF mode**
```{math}
 V_{GS} > V_{th}
```

Typically, $V_{th} ~ -3 V$. Because of this, PMOSFET devices are used as high-side switches. The following simulation use the Qucs-S model for a IRF4905 device.

```{figure} images/1_PMOSFET/1_1_PMOSFET_CurveTracer.png
---
class: with-border
---

PMOSFET DCIV curves.
```

The next simulation shows how the PMOSFET device can be driven from a GPO (without additional drivers) as it requires less than 1 mA to reach saturation.

```{figure} images/1_PMOSFET/1_2_PMOSFET_Switch_FromGPO.png
---
class: with-border
---

PMOSFET as a digitally-controlled switch. Low input: ON, High input: OFF.
```

Notice that in the previous arrangement, the PMOS requires a low-voltage input to turn on, but the logic can be easily inverted by using a NPN transistor.

```{figure} images/1_PMOSFET/1_3_PMOSFET_Switch_FromGPO_Inverted.png
---
class: with-border
---

PMOSFET as a digitally-controlled switch.  Low input: OFF, High input: ON.
```

## NMOSFET Devices

NMOSFET devices are used as low-side switches

**ON mode**
```{math}
 V_{GS} > V_{th}
```

**OFF mode**
```{math}
 V_{GS} < V_{th}
```

Typically, $V_{th} ~ 2 V$. Because of this, PMOSFET devices are used as high-side switches. The following simulation use the Qucs-S model for a IRF510 device.

```{figure} images/2_NMOSFET/2_1_NMOSFET_CurveTracer.png
---
class: with-border
---

NMOSFET DCIV curves.
```

Similarly as with the PMOSFET, the NMOSFET requires a tiny gate current to be tuned on and has a low channel resistance.

```{figure} images/2_NMOSFET/2_2_NMOSFET_Switch.png
---
class: with-border
---

NMOSFET as a low-side switch.
```

Notice that it requires a high gate voltage to get proper saturation. In general, GPOs cannot provide such voltage. The next circuit fixes that by driving the NMOSFET with a NPN transistor, so that it can be triggered with lower voltages

```{figure} images/2_NMOSFET/2_3_NMOSFET_Switch_NPN.png
---
class: with-border
---

NMOSFET as a low-side switch driven with a NPN transistor to lower the control voltage
```

 
## References

1. Rohm Semiconductor. "Basics of Si Power Devices"
