<Qucs Schematic 25.2.0>
<Properties>
  <View=-995,-628,2107,1274,1.13545,1574,607>
  <Grid=10,10,1>
  <DataSet=1_0_Ideal_Transmission_Lines_Model.dat>
  <DataDisplay=1_0_Ideal_Transmission_Lines_Model.dpl>
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
  <Pac P1 1 170 180 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 170 220 0 0 0 0>
  <GND * 1 170 340 0 0 0 0>
  <GND * 1 480 220 0 0 0 0>
  <GND * 1 480 340 0 0 0 0>
  <.SP SP1 1 210 810 0 56 0 0 "lin" 1 "100 MHz" 1 "5000 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 380 840 -31 16 0 0 "RL=dB(S[1,1])" 1 "through=dB(S[2,1])" 1 "coupled=dB(S[3,1])" 1 "isolated=dB(S[4,1])" 1 "yes" 0>
  <Eqn Eqn2 1 580 820 -31 16 0 0 "L_coupled=22.750" 1 "W_coupled=1" 1 "S_coupled=0.300" 1 "W0=1.08" 1 "L_feed=10.0" 1 "L_trans=L_feed/20" 1 "yes" 0>
  <Eqn Eqn3 1 740 800 -31 16 0 0 "mm=1e-3" 1 "L_coupled_mm=L_coupled*mm" 1 "W_coupled_mm=W_coupled*mm" 1 "S_coupled_mm=S_coupled*mm" 1 "W0_mm=W0*mm" 1 "L_feed_mm=L_feed*mm" 1 "L_trans_mm=L_trans*mm" 1 "yes" 0>
  <SUBST Substrate 1 80 790 -30 24 0 0 "3.55" 1 "0.508 mm" 1 "35 um" 1 "0.0027" 1 "0.022e-6" 1 "0.15e-6" 1>
  <Port P5 5 1010 950 -23 12 0 0 "1" 0 "analog" 0>
  <CTLIN Line1 1 340 190 -26 16 0 0 "Z0e" 1 "Z0o" 1 "L4" 1 "1" 0 "1" 0 "0 dB" 0 "0 dB" 0 "26.85" 0>
  <Pac P6 1 480 180 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac P7 1 170 300 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac P8 1 480 300 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Eqn Eqn4 1 700 70 -32 18 0 0 "Z0=50" 1 "C_dB=15" 1 "C=10^(-C_dB/20)" 1 "Z0e=Z0*sqrt((1+C)/(1-C))" 1 "Z0o=Z0*sqrt((1-C)/(1+C))" 1 "f0=2e9" 1 "lambda=299792458/f0" 1 "L4=lambda/4" 1 "yes" 0>
</Components>
<Wires>
  <170 210 170 220 "" 0 0 0 "">
  <170 330 170 340 "" 0 0 0 "">
  <170 260 170 270 "" 0 0 0 "">
  <480 210 480 220 "" 0 0 0 "">
  <480 330 480 340 "" 0 0 0 "">
  <480 260 480 270 "" 0 0 0 "">
  <170 140 310 140 "" 0 0 0 "">
  <370 140 370 180 "" 0 0 0 "">
  <370 140 480 140 "" 0 0 0 "">
  <370 200 430 200 "" 0 0 0 "">
  <430 200 430 260 "" 0 0 0 "">
  <430 260 480 260 "" 0 0 0 "">
  <170 260 280 260 "" 0 0 0 "">
  <280 200 280 260 "" 0 0 0 "">
  <280 200 310 200 "" 0 0 0 "">
  <480 140 480 150 "" 0 0 0 "">
  <170 140 170 150 "" 0 0 0 "">
  <310 140 310 180 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 970 434 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -18 1 -13 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"coupled" #aa00ff 0 3 0 0 0>
	  <Mkr 1.47889e+09 12 -157 3 0 0>
	  <Mkr 2.88241e+09 337 -74 3 0 0>
	  <Mkr 1.99598e+09 336 -148 3 0 0>
  </Rect>
  <Rect 970 214 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -2 0.5 0 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"through" #ff0000 0 3 0 0 0>
	  <Mkr 1.47889e+09 52 -77 3 0 0>
	  <Mkr 2.80854e+09 307 -134 3 0 0>
	  <Mkr 1.99598e+09 301 -73 3 0 0>
  </Rect>
  <Rect 980 654 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 2 -20 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"isolated" #000000 0 3 0 0 0>
	  <Mkr 1.47889e+09 35 -141 3 0 0>
	  <Mkr 2.80854e+09 325 -69 3 0 0>
  </Rect>
  <Rect 260 749 416 329 3 #c0c0c0 1 00 1 0 1e+09 5e+09 0 -40 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"through" #ff0000 1 3 0 0 0>
	<"RL" #0000ff 1 3 0 0 0>
	<"isolated" #000000 1 3 0 0 0>
	<"coupled" #aa00ff 2 3 0 0 0>
	  <Mkr 2.06985e+09 262 -262 3 0 0>
  </Rect>
  <Rect 980 874 497 164 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 5 -15 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"RL" #0000ff 0 3 0 0 0>
	  <Mkr 1.47889e+09 29 -67 3 0 0>
	  <Mkr 2.80854e+09 330 -142 3 0 0>
  </Rect>
  <Tab 610 364 257 64 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"Z0e" #0000ff 0 3 1 0 0>
	<"Z0o" #0000ff 0 3 1 0 0>
	<"L4" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 60 50 20 #000000 0 "Qucsator-RF Simulation: Ideal Coupled Lines">
  <Text 80 380 12 #000000 0 "Reference: David M. Pozar, "Microwave Engineering", 4th Edition, 2012. Chapter 7.7">
</Paintings>
