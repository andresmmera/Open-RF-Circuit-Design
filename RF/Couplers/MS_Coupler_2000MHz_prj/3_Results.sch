<Qucs Schematic 25.2.0>
<Properties>
  <View=-633,-169,1891,1207,0.621252,0,0>
  <Grid=10,10,1>
  <DataSet=3_Results.dat>
  <DataDisplay=3_Results.dpl>
  <OpenDisplay=0>
  <Script=3.Comparison.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Comparison between MS models and EM results>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Jun 26, 2025>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 180 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 30 -10 15 #000000 0 "Results">
  <Rectangle -30 -40 190 80 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Port P1 5 1140 980 -23 12 0 0 "1" 0 "analog" 0>
</Components>
<Wires>
</Wires>
<Diagrams>
  <Rect 160 476 413 216 3 #c0c0c0 1 00 1 0 1e+09 5e+09 0 -2 0.5 1 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"2_1_MS_models_Simulation:through" #0000ff 0 3 0 0 0>
	<"2_2_0_EMerge_Simulation:through" #ff0000 0 3 0 0 0>
	<"2_3_Sonnet_Simulation:through" #005500 0 3 0 0 0>
  </Rect>
  <Rect 740 484 431 229 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 5 -10 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"2_1_MS_models_Simulation:coupled" #0000ff 0 3 0 0 0>
	<"2_2_0_EMerge_Simulation:coupled" #ff0000 0 3 0 0 0>
	<"2_3_Sonnet_Simulation:coupled" #005500 0 3 0 0 0>
  </Rect>
  <Rect 160 891 416 201 3 #c0c0c0 1 00 1 0 1e+09 5e+09 0 -50 5 -15 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"2_1_MS_models_Simulation:isolated" #0000ff 0 3 0 0 0>
	<"2_2_0_EMerge_Simulation:isolated" #ff0000 0 3 0 0 0>
	<"2_3_Sonnet_Simulation:isolated" #005500 0 3 0 0 0>
  </Rect>
  <Rect 730 896 429 202 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 5 -15 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"2_1_MS_models_Simulation:RL" #0000ff 0 3 0 0 0>
	<"2_2_0_EMerge_Simulation:RL" #ff0000 0 3 0 0 0>
	<"2_3_Sonnet_Simulation:RL" #005500 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 290 200 20 #000000 0 "Through">
  <Text 870 200 20 #000000 0 "Coupling">
  <Text 270 630 20 #000000 0 "Isolation">
  <Text 930 640 20 #000000 0 "RL">
  <Text 1230 510 20 #ff0000 0 "EMerge">
  <Text 1230 550 20 #0000ff 0 "MS models">
  <Text 1230 590 20 #005500 0 "Sonnet Lite">
  <Text 60 50 20 #000000 0 "Results Comparison">
  <Text 60 110 12 #000000 0 "Using as a reference the design parameters from the Qucsator-RF simulation, the results between Qucsator-RF, Sonnet Lite and EMerge are compared">
</Paintings>
