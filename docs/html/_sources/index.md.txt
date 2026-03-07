# Circuit Design Examples

## Introduction

This repository showcases self-learning projects in electronics and RF engineering. Contributions or suggestions are welcome. Feel free to reach me out at [andresmmera@protonmail.com](mailto:andresmmera@protonmail.com)

While my primary interest is RF engineering, this repo also includes general electronics designs. Bug reports or improvement ideas are appreciated.

Do you want to build this page locally? [See this](/Build_the_docs)


### Open-Source RF Engineering Software

The examples in this repo use the following tools:


```{eval-rst}
.. list-table::
   :header-rows: 1

   * - Tool
     - Licensing
     - Notes
   * - `Qucs-S <https://ra3xdh.github.io/>`_
     - GPL v2
     - `GitHub Repo <https://github.com/ra3xdh/qucs_s>`_
   * - `Qucs-S S-Parameter Viewer <https://andresmmera.github.io/qucs-s-spar-viewer/>`_
     - GPL v3
     - `GitHub Repo <https://github.com/andresmmera/qucs-s-spar-viewer>`_
   * - `EMerge <https://www.emerge-software.com>`_
     - GPL v2
     - `GitHub Repo <https://github.com/FennisRobert/EMerge>`_
   * - `Sonnet Lite <https://www.sonnetsoftware.com/products/lite/>`_
     - GPL v2
     - Proprietary software. Free license
```


## RF Projects

### Filters
```{eval-rst}
.. list-table::
   :header-rows: 1
   :class: sphinx-datatable

   * - #
     - Project
     - Filter Type
     - Frequency
     - Notes
   * - `RF.F.01 </RF/Filters/RF_Filter_Tutorial_prj/index>`_
     - `RF Filter Tutorial </RF/Filters/RF_Filter_Tutorial_prj/index>`_
     - LPF, HPF, BPF, BSF
     - 500 MHz
     - Lumped LC. Canonical & Direct-Coupled
   * - `RF.F.02 </RF/Filters/Example_Designs_Murata_Parts_prj/index>`_
     - `RF Filters with Murata parts </RF/Filters/Example_Designs_Murata_Parts_prj/index>`_
     - HPF, BPF
     - 500 MHz
     - Simulations with Murata pspice models
   * - `RF.F.03 </RF/Filters/BPF/QW_Coupled_Lines_BPF_o5_5GHz_500MHz_prj/index>`_
     - `MS Coupled-Line Filter </RF/Filters/BPF/QW_Coupled_Lines_BPF_o5_5GHz_500MHz_prj/index>`_
     - BPF
     - 5000 MHz
     - BW = 400 MHz. RO4003C.
   * - `RF.F.04 </RF/Filters/BPF/QW_Coupled_Lines_w_stubs_BPF_o5_5GHz_500MHz_prj/index>`_
     - `MS Coupled-Line Filter with stubs </RF/Filters/BPF/QW_Coupled_Lines_w_stubs_BPF_o5_5GHz_500MHz_prj/index>`_
     - BPF
     - 5000 MHz
     - BW = 400 MHz. RO4003C.
   * - `RF.F.05 </RF/Filters/LPF/Stepped-Z_LPF_o5_2GHz_prj/index>`_
     - `MS Stepped-Z LPF </RF/Filters/LPF/Stepped-Z_LPF_o5_2GHz_prj/index>`_
     - LPF
     - 2000 MHz
     - RO4003C
   * - `RF.F.06 </RF/Filters/BSF/QW_Lines_BSF_5GHz_prj/index>`_
     - `MS Quarter-Wave BSF </RF/Filters/BSF/QW_Lines_BSF_5GHz_prj/index>`_
     - BSF
     - 5000 MHz
     - RO4003C
   * - `RF.F.07 </RF/Filters/HPF/Lumped_HPF_2_GHz_prj/index>`_
     - `Lumped HPF with printed inductors </RF/Filters/HPF/Lumped_HPF_2_GHz_prj/index>`_
     - HPF
     - 2000 MHz
     - RO4003C
```


### Couplers

```{eval-rst}
.. list-table::
   :header-rows: 1
   :class: sphinx-datatable
   
   * - #
     - Project
     - Frequency
     - Notes
   * - `RF.C.01 </RF/Couplers/MS_Coupler_2000MHz_prj/index>`_
     - `Directional Coupler </RF/Couplers/MS_Coupler_2000MHz_prj/index>`_
     - 2000 MHz
     - Microstrip. RO4003C
   * - `RF.C.02 </RF/Couplers/MS_BranchLine_2000MHz_prj/index>`_
     - `Branch-Line </RF/Couplers/MS_BranchLine_2000MHz_prj/index>`_
     - 2000 MHz
     - Microstrip. RO4003C
```


## General Electronics

```{eval-rst}
.. list-table::
   :header-rows: 1
   :class: sphinx-datatable

   * - #
     - Project
     - Notes
   * - `GE.01 </General_Electronics/PWM_as_DAC_prj/index>`_
     - `How to use a PWM output to get an analog voltage </General_Electronics/PWM_as_DAC_prj/index>`_
     - Get an analog voltage from a microcontroller PWM output
   * - `GE.02 </General_Electronics/MOSFET_switch_prj/index>`_
     - `How to use a MOSFET as a switch </General_Electronics/MOSFET_switch_prj/index>`_
     - Use NMOSFETs or PMOSFETs as low-side or high-side switches
```

