<Qucs Schematic 25.2.0>
<Properties>
  <View=-505,-313,1945,1023,0.63997,0,0>
  <Grid=10,10,1>
  <DataSet=2_1_BranchLine_MLIN.dat>
  <DataDisplay=2_1_BranchLine_MLIN.dpl>
  <OpenDisplay=0>
  <Script=1_BranchLine_MLIN.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Branch-line coupler @ 2000 MHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Freb 15, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 200 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 12 #000000 0 "Microstrip lines">
  <Rectangle -10 -20 200 50 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Pac T1 1 180 470 -100 -20 0 1 "1" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 180 500 0 0 0 0>
  <Pac T2 1 660 470 25 -20 0 1 "2" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 660 500 0 0 0 0>
  <Pac T3 1 660 590 25 -20 0 1 "3" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 660 620 0 0 0 0>
  <R R1 1 300 600 -115 -21 0 1 "50.0Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 300 630 0 0 0 0>
  <Eqn Eqn1 1 450 770 -28 15 0 0 "S11_dB=dB(S[1,1])" 1 "S21_dB=dB(S[2,1])" 1 "S31_dB=dB(S[3,1])" 1 "S32_dB=dB(S[3,2])" 1 "yes" 0>
  <.SP SP1 1 90 770 0 56 0 0 "log" 1 "1500 MHz" 1 "2500 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn3 1 630 910 -32 18 0 0 "mm=1e-3" 1 "yes" 0>
  <SUBST Subst1 1 280 790 -30 24 0 0 "3.55" 1 "0.508mm" 1 "32um" 1 "0.0027" 1 "2.43902e-08" 1 "1.5e-07" 1>
  <Port P1 5 1390 60 -23 12 0 0 "1" 0 "analog" 0>
  <Eqn Variablesmm 1 640 163 -32 18 0 0 "W50_mm=W50*mm" 1 "L50_mm=L50*mm" 1 "W35_mm=W35*mm" 1 "L35_mm=L35*mm" 1 "Lfeed_mm=Lfeed*mm" 1 "yes" 0>
  <MLIN MLIN1 1 420 420 -35 -81 1 2 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN2 1 420 540 -31 24 1 2 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN4 1 540 480 20 -30 1 1 "Subst1" 0 "W50_mm" 1 "L50_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN3 1 300 480 20 -30 1 1 "Subst1" 0 "W50_mm" 1 "L50_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <Eqn Variables 1 540 163 -32 18 0 0 "W50=1.1" 1 "L50=22.6" 1 "W35=1.87" 1 "L35=22.1" 1 "Lfeed=1" 1 "yes" 0>
  <Eqn Eqn4 1 730 880 -28 15 0 0 "S21_phase=(180/pi)*unwrap(angle(S[2,1]))" 1 "S31_phase=(180/pi)*unwrap(angle(S[3,1]))" 1 "d_phase=abs(S21_phase-S31_phase)" 1 "yes" 0>
</Components>
<Wires>
  <180 420 300 420 "" 0 0 0 "">
  <180 420 180 440 "" 0 0 0 "">
  <540 420 660 420 "" 0 0 0 "">
  <660 420 660 440 "" 0 0 0 "">
  <540 540 660 540 "" 0 0 0 "">
  <660 540 660 560 "" 0 0 0 "">
  <300 420 390 420 "" 0 0 0 "">
  <450 420 540 420 "" 0 0 0 "">
  <540 420 540 450 "" 0 0 0 "">
  <540 510 540 540 "" 0 0 0 "">
  <450 540 540 540 "" 0 0 0 "">
  <300 420 300 450 "" 0 0 0 "">
  <300 540 300 570 "" 0 0 0 "">
  <300 540 390 540 "" 0 0 0 "">
  <300 510 300 540 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 937 369 490 278 3 #c0c0c0 1 00 1 1.5e+09 1e+08 2.5e+09 0 -30 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 1 3 0 0 0>
	<"S21_dB" #ff0000 1 3 0 0 0>
	  <Mkr 1.99964e+09 305 -273 3 0 0>
	<"S31_dB" #005500 1 3 0 0 0>
	<"S32_dB" #000000 1 3 0 0 0>
  </Rect>
  <Rect 947 809 490 278 3 #c0c0c0 1 00 1 1.5e+09 1e+08 2.5e+09 0 80 2 100 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"d_phase" #0000ff 0 3 0 0 0>
	  <Mkr 1.99964e+09 197 -270 3 0 0>
	  <Mkr 1.79988e+09 45 -270 3 0 0>
	  <Mkr 2.19887e+09 342 -97 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 70 60 20 #000000 0 "Branch-Line Coupler 2000 MHz">
  <Text 140 690 12 #000000 0 "Reference: David M. Pozar, "Microwave Engineering", 4th Edition, 2012. Chapter 7.5">
  <Text 40 170 12 #000000 0 "Once the behavior is verified using ideal transmission lines,\nthey are replaced by microstrip (MS) models.\n\nThe substrate is RO4003C">
</Paintings>
