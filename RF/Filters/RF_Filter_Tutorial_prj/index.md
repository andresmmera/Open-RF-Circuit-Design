# RF Filter Design Tutorial

## Introduction

This is a tutorial on how to build lumped RF filter from scratch.

The project files are available [here](https://github.com/andresmmera/Open-RF-Circuit-Design/tree/main/RF/Filters/RF_Filter_Tutorial_prj)


### Canonical filters

This is the most common technique to design an RF filter. The design begins by choosing a response prototype and finding its coefficients. Then, through transformation it is possible to design highpass, bandpass and bandstop filters of any system impedance.

[Learn more here](/RF/Filters/RF_Filter_Tutorial_prj/CanonicalFilters)
    
### Direct Coupled Filters
    
The Direct-Coupled filter topology consist on a number of resonators (shunt or series) coupled with inverters tuned to satisfy a given response.

This topology is very popular in the design of narrowband RF filters, since the designer can fix one of the parameters of the resonators (e.g. L) and then adjust the other (e.g. C) to get the approapiate inverter. In many cases, the implementation of narrowband canonical BPF is not practical because of the values it yields and the direct-coupled implemetation is the choice.

There are two approaches to implement direct-coupled bandpass filters:
- Shunt resonators [Learn more](/RF/Filters/RF_Filter_Tutorial_prj/ShuntResonators)
- Series resonators [Learn more](/RF/Filters/RF_Filter_Tutorial_prj/SeriesResonators)



### References

1. S. B. Cohn, "Direct-Coupled-Resonator Filters," in Proceedings of the IRE, vol. 45, no. 2, pp. 187-196, Feb. 1957, doi: 10.1109/JRPROC.1957.278389.

2. George L. Matthaei, L. Young, E. M. Jones. "Microwave Filters, Impedance-Matching Networks, and Coupling Structures".

3. Anatol I. Zverev, "Handbook of Filter Synthesis". John Wiley and Sons Inc. 1967
