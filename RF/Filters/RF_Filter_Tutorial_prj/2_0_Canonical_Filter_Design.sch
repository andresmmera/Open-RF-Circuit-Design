<Qucs Schematic 25.2.0>
<Properties>
  <View=-296,2,770,583,1.4716,0,0>
  <Grid=10,10,1>
  <DataSet=2_0_Canonical_Filter_Design.dat>
  <DataDisplay=2_0_Canonical_Filter_Design.dpl>
  <OpenDisplay=0>
  <Script=2_0_Canonical_Filter_Design.m>
  <RunScript=0>
  <showFrame=10>
  <FrameText0=Canonical Filter Design>
  <FrameText1=Drawn By: Andrés Martíne Mera>
  <FrameText2=Date: Dec 20, 2025>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 150 -16 SUB>
  <Text 20 -10 9 #000000 0 "Canonical Filters">
  <Rectangle -20 -20 150 40 #000000 1 1 #c0c0c0 1 0>
  <.PortSym 0 0 1 0 P1>
</Symbol>
<Components>
  <Port P1 5 420 50 -23 12 0 0 "1" 0 "analog" 0>
  <Sub SUB1 5 100 270 150 -16 0 0 "2_1_0_Lowpass_Filter.sch" 0>
  <Sub SUB2 5 100 320 150 -16 0 0 "2_2_0_Highpass_Filter.sch" 0>
  <Sub SUB3 5 100 370 150 -16 0 0 "2_3_0_Bandpass_Filter.sch" 0>
  <Sub SUB4 5 100 420 150 -16 0 0 "2_4_0_Bandstop_Filter.sch" 0>
</Components>
<Wires>
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 50 50 15 #000000 0 "Canonical Filters">
  <Text 30 100 8 #000000 0 "Canonical filters are obtained from the lowpass (LP) prototype.">
  <Text 30 160 8 #000000 0 "Through scaling, the prototype response can be adjusted to any Z_0 and f_c">
  <Text 40 510 7 #000000 0 "[1] "Handbook of Filter Synthesis", Anatol I. Zverev. John Wiley and Sons Inc. 1967">
  <Text 30 180 8 #000000 0 "Highpass, bandpass and bandstop can be obtained from circuit transformations">
  <Text 30 120 8 #000000 0 "The LP prototype coefficients [1] are normalized for Z_0 = 1 Ω and ω_c = 1 rad/s">
  <Text 30 140 8 #000000 0 "[1] contains extensive tables with lowpass coefficients for different responses">
  <Text 270 340 7 #000000 0 "(Push into the subcircuits)">
</Paintings>
