<Qucs Schematic 25.2.0>
<Properties>
  <View=-3207,-2151,4003,1910,0.437763,1173,713>
  <Grid=10,10,1>
  <DataSet=2_1_MS_models_Simulation.dat>
  <DataDisplay=2_1_MS_models_Simulation.dpl>
  <OpenDisplay=0>
  <Script=MS_Coupler_15dB.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=15 dB Coupler: MS models>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Jun 25th, 2025>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 230 -16 SUB>
  <.PortSym -30 0 1 0 P5>
  <Text -10 -10 15 #000000 0 "Qucsator MS models">
  <Rectangle -70 -40 270 80 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Pac P1 1 170 200 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 170 240 0 0 0 0>
  <Pac P2 1 170 370 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 170 410 0 0 0 0>
  <Pac P3 1 760 200 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 760 240 0 0 0 0>
  <Pac P4 1 760 370 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 760 410 0 0 0 0>
  <.SP SP1 1 210 810 0 56 0 0 "lin" 1 "100 MHz" 1 "5000 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 380 840 -31 16 0 0 "RL=dB(S[1,1])" 1 "through=dB(S[2,1])" 1 "coupled=dB(S[3,1])" 1 "isolated=dB(S[4,1])" 1 "yes" 0>
  <Eqn Eqn2 1 580 820 -31 16 0 0 "L_coupled=22.750" 1 "W_coupled=1" 1 "S_coupled=0.300" 1 "W0=1.08" 1 "L_feed=10.0" 1 "L_trans=L_feed/20" 1 "yes" 0>
  <Eqn Eqn3 1 740 800 -31 16 0 0 "mm=1e-3" 1 "L_coupled_mm=L_coupled*mm" 1 "W_coupled_mm=W_coupled*mm" 1 "S_coupled_mm=S_coupled*mm" 1 "W0_mm=W0*mm" 1 "L_feed_mm=L_feed*mm" 1 "L_trans_mm=L_trans*mm" 1 "yes" 0>
  <SUBST Substrate 1 80 790 -30 24 0 0 "3.55" 1 "0.508 mm" 1 "35 um" 1 "0.0027" 1 "0.022e-6" 1 "0.15e-6" 1>
  <Port P5 5 1010 950 -23 12 0 0 "1" 0 "analog" 0>
  <MSTEP MS7 5 300 140 -45 25 1 0 "Substrate" 0 "W0_mm" 0 "W_coupled_mm" 0 "Hammerstad" 0 "Kirschning" 0>
  <MSTEP MS3 5 300 310 -26 17 0 0 "Substrate" 0 "W0_mm" 0 "W_coupled_mm" 0 "Hammerstad" 0 "Kirschning" 0>
  <MLIN MS6 5 230 140 -32 -83 1 0 "Substrate" 0 "W0_mm" 0 "L_feed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS19 5 230 310 -32 -83 1 0 "Substrate" 0 "W0_mm" 0 "L_feed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS20 5 710 140 -32 -83 1 0 "Substrate" 0 "W0_mm" 0 "L_feed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS21 5 710 310 -32 -83 1 0 "Substrate" 0 "W0_mm" 0 "L_feed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MSTEP MS11 5 640 140 -44 19 0 2 "Substrate" 0 "W0_mm" 0 "W_coupled_mm" 0 "Hammerstad" 0 "Kirschning" 0>
  <MSTEP MS15 5 640 310 -39 -79 1 2 "Substrate" 0 "W0_mm" 0 "W_coupled_mm" 0 "Hammerstad" 0 "Kirschning" 0>
  <MLIN MS8 5 370 140 -24 -86 1 0 "Substrate" 0 "W_coupled_mm" 0 "L_trans_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS22 5 370 310 -24 -86 1 0 "Substrate" 0 "W_coupled_mm" 0 "L_trans_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS23 5 570 310 -24 -86 1 0 "Substrate" 0 "W_coupled_mm" 0 "L_trans_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS24 5 570 140 -24 -86 1 0 "Substrate" 0 "W_coupled_mm" 0 "L_trans_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MMBEND MS9 5 440 140 -26 -49 1 1 "Substrate" 0 "W_coupled_mm" 0>
  <MMBEND MS5 5 440 310 -26 15 0 3 "Substrate" 0 "W_coupled_mm" 0>
  <MMBEND MS17 5 500 310 -7 32 1 3 "Substrate" 0 "W_coupled_mm" 0>
  <MMBEND MS13 5 500 140 -7 -49 0 1 "Substrate" 0 "W_coupled_mm" 0>
  <MCOUPLED MS18 5 470 230 43 -35 0 1 "Substrate" 0 "W_coupled_mm" 1 "L_coupled_mm" 1 "S_coupled_mm" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
</Components>
<Wires>
  <440 260 440 280 "" 0 0 0 "">
  <330 310 340 310 "" 0 0 0 "">
  <260 310 270 310 "" 0 0 0 "">
  <400 310 410 310 "" 0 0 0 "">
  <330 140 340 140 "" 0 0 0 "">
  <260 140 270 140 "" 0 0 0 "">
  <400 140 410 140 "" 0 0 0 "">
  <440 170 440 200 "" 0 0 0 "">
  <600 140 610 140 "" 0 0 0 "">
  <670 140 680 140 "" 0 0 0 "">
  <530 140 540 140 "" 0 0 0 "">
  <500 170 500 200 "" 0 0 0 "">
  <600 310 610 310 "" 0 0 0 "">
  <670 310 680 310 "" 0 0 0 "">
  <530 310 540 310 "" 0 0 0 "">
  <500 260 500 280 "" 0 0 0 "">
  <170 230 170 240 "" 0 0 0 "">
  <170 140 170 170 "" 0 0 0 "">
  <170 140 200 140 "" 0 0 0 "">
  <170 400 170 410 "" 0 0 0 "">
  <170 310 170 340 "" 0 0 0 "">
  <170 310 200 310 "" 0 0 0 "">
  <760 230 760 240 "" 0 0 0 "">
  <760 140 760 170 "" 0 0 0 "">
  <740 140 760 140 "" 0 0 0 "">
  <760 400 760 410 "" 0 0 0 "">
  <760 310 760 340 "" 0 0 0 "">
  <740 310 760 310 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 970 434 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -18 1 -13 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"coupled" #aa00ff 0 3 0 0 0>
	  <Mkr 1.47889e+09 12 -157 3 0 0>
	  <Mkr 2.88241e+09 337 -134 3 0 0>
  </Rect>
  <Rect 970 214 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -2 0.5 0 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"through" #ff0000 0 3 0 0 0>
	  <Mkr 1.47889e+09 52 -77 3 0 0>
	  <Mkr 2.80854e+09 297 -84 3 0 0>
  </Rect>
  <Rect 980 654 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 2 -20 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"isolated" #000000 0 3 0 0 0>
	  <Mkr 1.47889e+09 35 -141 3 0 0>
	  <Mkr 2.80854e+09 325 -69 3 0 0>
  </Rect>
  <Rect 270 729 434 286 3 #c0c0c0 1 00 1 0 1e+09 5e+09 0 -40 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"through" #ff0000 1 3 0 0 0>
	  <Mkr 1.99598e+09 222 -350 3 0 0>
	<"RL" #0000ff 1 3 0 0 0>
	<"isolated" #000000 1 3 0 0 0>
	  <Mkr 1.99598e+09 264 -173 3 0 0>
	<"coupled" #aa00ff 2 3 0 0 0>
	  <Mkr 1.99598e+09 262 -262 3 0 0>
  </Rect>
  <Rect 980 874 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 5 -15 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"RL" #0000ff 0 3 0 0 0>
	  <Mkr 1.47889e+09 29 -67 3 0 0>
	  <Mkr 2.80854e+09 330 -142 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 60 50 20 #000000 0 "Qucsator-RF Simulation">
</Paintings>
