<Qucs Schematic 25.2.0>
<Properties>
  <View=-711,-369,2258,1067,0.639013,224,0>
  <Grid=10,10,1>
  <DataSet=2_2_0_EMerge_Simulation.dat>
  <DataDisplay=2_2_0_EMerge_Simulation.dpl>
  <OpenDisplay=0>
  <Script=MS_Coupler_15dB.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=15 dB MS Coupler: EMerge results>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Jun 25th, 2025>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 240 -16 SUB>
  <.PortSym 0 0 1 0 P5>
  <Text 20 -10 15 #000000 0 "EMerge Simulation">
  <Rectangle -40 -40 270 80 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Pac P1 1 500 280 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 500 320 0 0 0 0>
  <Pac P2 1 500 410 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 500 450 0 0 0 0>
  <Pac P3 1 790 280 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 790 320 0 0 0 0>
  <Pac P4 1 790 420 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 790 460 0 0 0 0>
  <Sub SUB1 1 650 300 -40 74 0 0 "Coupler_EMerge_data.sch" 0>
  <Port P5 5 410 970 -23 12 0 0 "1" 0 "analog" 0>
  <.SP SP1 1 50 820 0 56 0 0 "lin" 1 "100 MHz" 1 "5000 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 220 840 -31 16 0 0 "RL=dB(S[1,1])" 1 "through=dB(S[2,1])" 1 "coupled=dB(S[3,1])" 1 "isolated=dB(S[4,1])" 1 "yes" 0>
</Components>
<Wires>
  <500 310 500 320 "" 0 0 0 "">
  <500 440 500 450 "" 0 0 0 "">
  <790 310 790 320 "" 0 0 0 "">
  <790 450 790 460 "" 0 0 0 "">
  <740 250 790 250 "" 0 0 0 "">
  <500 250 550 250 "" 0 0 0 "">
  <500 360 500 380 "" 0 0 0 "">
  <740 360 790 360 "" 0 0 0 "">
  <790 360 790 390 "" 0 0 0 "">
  <500 360 550 360 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 960 424 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -18 1 -13 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"coupled" #aa00ff 0 3 0 0 0>
	  <Mkr 1.47889e+09 12 -157 3 0 0>
	  <Mkr 2.88241e+09 337 -134 3 0 0>
  </Rect>
  <Rect 960 204 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -2 0.5 0 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"through" #ff0000 0 3 0 0 0>
	  <Mkr 1.47889e+09 52 -77 3 0 0>
	  <Mkr 2.80854e+09 297 -84 3 0 0>
  </Rect>
  <Rect 960 644 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 2 -20 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"isolated" #000000 0 3 0 0 0>
	  <Mkr 1.47889e+09 35 -141 3 0 0>
	  <Mkr 2.80854e+09 325 -69 3 0 0>
  </Rect>
  <Rect 460 869 416 329 3 #c0c0c0 1 00 1 0 1e+09 5e+09 0 -40 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"through" #ff0000 1 3 0 0 0>
	<"RL" #0000ff 1 3 0 0 0>
	<"isolated" #000000 1 3 0 0 0>
	  <Mkr 1.97136e+09 264 -173 3 0 0>
	<"coupled" #aa00ff 2 3 0 0 0>
	  <Mkr 2.06985e+09 262 -262 3 0 0>
  </Rect>
  <Rect 960 864 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 5 -15 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"RL" #0000ff 0 3 0 0 0>
	  <Mkr 1.47889e+09 29 -67 3 0 0>
	  <Mkr 2.80854e+09 330 -142 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 50 50 20 #000000 0 "EMerge Simulation: First Approach">
  <Text 60 110 12 #000000 0 "The coupler is modeled in Python using the EMerge package. The design parameters\nextracted from the Qucsator-RF simulation are used as input">
</Paintings>
