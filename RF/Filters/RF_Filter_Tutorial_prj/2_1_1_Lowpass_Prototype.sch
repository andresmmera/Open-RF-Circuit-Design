<Qucs Schematic 25.2.0>
<Properties>
  <View=-377,-175,1366,847,1.09476,269,180>
  <Grid=10,10,1>
  <DataSet=2_1_1_Lowpass_Prototype.dat>
  <DataDisplay=2_1_1_Lowpass_Prototype.dpl>
  <OpenDisplay=0>
  <Script=2_1_Lowpass_Prototype.m>
  <RunScript=0>
  <showFrame=1>
  <FrameText0=Lowpass Prototype>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Dec 20, 2025>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 140 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 10 -10 9 #000000 0 "Lowpass Prototype">
  <Rectangle -30 -20 160 40 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <GND * 1 110 300 0 0 0 0>
  <GND * 1 180 300 0 0 0 0>
  <GND * 1 310 300 0 0 0 0>
  <GND * 1 380 300 0 0 0 0>
  <Eqn gi_coeffs1 1 860 110 -31 18 0 0 "g0=1.000000" 1 "g1=0.629180" 1 "g2=0.970282" 1 "g3=0.629180" 1 "g4=1.000000" 1 "no" 0>
  <C C1 1 180 270 -12 60 0 1 "g1" 1 "" 0 "neutral" 0>
  <L L1 1 250 220 -30 -50 0 0 "g2" 1 "" 0>
  <C C2 1 310 270 -10 61 0 1 "g3" 1 "" 0 "neutral" 0>
  <Pac T1 1 110 270 -64 -21 0 1 "1" 1 "g0" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac T2 1 380 270 24 -19 0 1 "2" 1 "g4" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <.SP SP1 1 830 270 0 56 0 0 "lin" 1 "0" 1 "1.6" 1 "101" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND * 1 120 560 0 0 0 0>
  <GND * 1 250 560 0 0 0 0>
  <GND * 1 390 560 0 0 0 0>
  <Pac T3 1 120 530 -64 -21 0 1 "3" 1 "g0" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac T4 1 390 530 24 -19 0 1 "4" 1 "g4" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <L L2 1 190 480 -30 -50 0 0 "g1" 1 "" 0>
  <C C4 1 250 530 -10 61 0 1 "g2" 1 "" 0 "neutral" 0>
  <L L3 1 310 480 -30 -50 0 0 "g3" 1 "" 0>
  <Eqn FirstShunt 1 860 570 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <Eqn FirstSeries 1 860 460 -28 15 0 0 "S43_dB=dB(S[4,3])" 1 "S33_dB=dB(S[3,3])" 1 "yes" 0>
  <Port P1 5 940 50 -23 12 0 0 "1" 0 "analog" 0>
  <Sub SUB1 4 220 700 140 -16 0 0 "2_1_2_Lowpass_Prototype_Impedance_scaling.sch" 0>
</Components>
<Wires>
  <110 220 180 220 "" 0 0 0 "">
  <110 220 110 240 "" 0 0 0 "">
  <180 220 180 240 "" 0 0 0 "">
  <180 220 220 220 "" 0 0 0 "">
  <280 220 310 220 "" 0 0 0 "">
  <310 220 310 240 "" 0 0 0 "">
  <310 220 380 220 "" 0 0 0 "">
  <380 220 380 240 "" 0 0 0 "">
  <120 480 120 500 "" 0 0 0 "">
  <120 480 160 480 "" 0 0 0 "">
  <220 480 250 480 "" 0 0 0 "">
  <250 480 250 500 "" 0 0 0 "">
  <390 480 390 500 "" 0 0 0 "">
  <250 480 280 480 "" 0 0 0 "">
  <340 480 390 480 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 520 330 240 160 3 #c0c0c0 1 00 1 0 2 10 0 -50 5 5 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 1 3 0 0 0>
	<"S21_dB" #ff0000 1 3 0 0 0>
	  <Mkr 0.16 111 -145 3 0 0>
  </Rect>
  <Rect 520 580 240 160 3 #c0c0c0 1 00 1 0 0.5 1.6 0 -50 5 5 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S33_dB" #0000ff 1 3 0 0 0>
	<"S43_dB" #ff0000 1 3 0 0 0>
	  <Mkr 0.16 111 -135 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 60 50 15 #000000 0 "Lowpass Prototype">
  <Text 60 90 9 #000000 0 "Canonical filter design begins with the lowpass prototype coefficients normalized to ω = 1 rad/s (i.e. 0.16 Hz) and R_S = 1 Ω.">
  <Text 60 130 9 #000000 0 "[1] "Handbook of Filter Synthesis", Anatol I. Zverev. John Wiley and Sons Inc. 1967">
  <Text 60 160 15 #000000 0 "1^{st} shunt">
  <Text 70 390 15 #000000 0 "1^{st} series">
  <Text 60 110 9 #000000 0 "Extensive tabulation of the g_i coefficients can be found in [1]">
  <Text 70 670 15 #000000 0 "Next Step:">
  <Rectangle 60 660 310 70 #ff0000 1 2 #c0c0c0 1 0>
</Paintings>
