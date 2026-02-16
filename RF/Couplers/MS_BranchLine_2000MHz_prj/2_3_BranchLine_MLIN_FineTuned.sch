<Qucs Schematic 25.2.0>
<Properties>
  <View=-473,-285,1935,1028,0.651181,0,0>
  <Grid=10,10,1>
  <DataSet=2_3_BranchLine_MLIN_FineTuned.dat>
  <DataDisplay=2_3_BranchLine_MLIN_FineTuned.dpl>
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
  <.ID 310 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 12 #000000 0 "Microstrip lines with tees and feeds">
  <Rectangle -10 -20 310 50 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Eqn Eqn1 1 470 790 -28 15 0 0 "S11_dB=dB(S[1,1])" 1 "S21_dB=dB(S[2,1])" 1 "S31_dB=dB(S[3,1])" 1 "S32_dB=dB(S[3,2])" 1 "yes" 0>
  <.SP SP1 1 110 790 0 56 0 0 "log" 1 "1500 MHz" 1 "2500 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac T1 1 160 480 -100 -20 0 1 "1" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 160 510 0 0 0 0>
  <Pac T2 1 740 480 25 -20 0 1 "2" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 740 510 0 0 0 0>
  <Pac T3 1 740 630 25 -20 0 1 "3" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 740 660 0 0 0 0>
  <R R1 1 180 630 -115 -21 0 1 "50.0Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 180 660 0 0 0 0>
  <Eqn Eqn2 1 640 920 -32 18 0 0 "mm=1e-3" 1 "yes" 0>
  <SUBST Subst1 1 300 810 -30 24 0 0 "3.55" 1 "0.508mm" 1 "32um" 1 "0.0027" 1 "2.43902e-08" 1 "1.5e-07" 1>
  <Port P1 5 1460 70 -23 12 0 0 "1" 0 "analog" 0>
  <Eqn Variablesmm1 1 680 213 -32 18 0 0 "W50_mm=W50*mm" 1 "L50_mm=L50*mm" 1 "W35_mm=W35*mm" 1 "L35_mm=L35*mm" 1 "Lfeed_mm=Lfeed*mm" 1 "yes" 0>
  <MLIN MLIN1 1 440 430 -35 -81 1 2 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN2 1 440 560 -31 24 1 2 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN3 1 560 490 20 -30 1 1 "Subst1" 0 "W50_mm" 1 "L50_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN4 1 320 490 20 -30 1 1 "Subst1" 0 "W50_mm" 1 "L50_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MTEE MS1 5 320 430 -26 -125 0 0 "Subst1" 0 "W50_mm" 0 "W35_mm" 0 "W50_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN MLIN5 5 240 430 -35 -81 1 2 "Subst1" 0 "W50_mm" 0 "Lfeed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN6 5 240 560 -35 -81 1 2 "Subst1" 0 "W50_mm" 0 "Lfeed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN7 5 660 430 -35 -81 1 2 "Subst1" 0 "W50_mm" 0 "Lfeed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN8 5 650 560 -35 -81 1 2 "Subst1" 0 "W50_mm" 0 "Lfeed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MTEE MS2 5 560 430 -26 -125 1 2 "Subst1" 0 "W50_mm" 0 "W35_mm" 0 "W50_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS3 5 560 560 -26 34 0 2 "Subst1" 0 "W50_mm" 0 "W35_mm" 0 "W50_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS4 5 320 560 -26 15 1 0 "Subst1" 0 "W50_mm" 0 "W35_mm" 0 "W50_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <Eqn Eqn3 1 640 800 -28 15 0 0 "S21_phase=(180/pi)*unwrap(angle(S[2,1]))" 1 "S31_phase=(180/pi)*unwrap(angle(S[3,1]))" 1 "d_phase=abs(S21_phase-S31_phase)" 1 "yes" 0>
  <Eqn Variables1 1 520 213 -32 18 0 0 "W50=1.1" 1 "L50=21.600" 1 "W35=1.87" 1 "L35=21.600" 1 "Lfeed=5" 1 "yes" 0>
</Components>
<Wires>
  <160 430 160 450 "" 0 0 0 "">
  <740 430 740 450 "" 0 0 0 "">
  <470 430 530 430 "" 0 0 0 "">
  <560 520 560 530 "" 0 0 0 "">
  <350 430 410 430 "" 0 0 0 "">
  <590 430 630 430 "" 0 0 0 "">
  <740 560 740 600 "" 0 0 0 "">
  <590 560 620 560 "" 0 0 0 "">
  <320 520 320 530 "" 0 0 0 "">
  <350 560 410 560 "" 0 0 0 "">
  <470 560 530 560 "" 0 0 0 "">
  <270 430 290 430 "" 0 0 0 "">
  <270 560 290 560 "" 0 0 0 "">
  <160 430 210 430 "" 0 0 0 "">
  <680 560 740 560 "" 0 0 0 "">
  <690 430 740 430 "" 0 0 0 "">
  <180 560 180 600 "" 0 0 0 "">
  <180 560 210 560 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 957 389 490 278 3 #c0c0c0 1 00 1 1.5e+09 1e+08 2.5e+09 0 -30 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 1 3 0 0 0>
	<"S21_dB" #ff0000 1 3 0 0 0>
	<"S31_dB" #ff00ff 1 3 0 0 0>
	<"S32_dB" #000000 1 3 0 0 0>
  </Rect>
  <Rect 957 799 490 278 3 #c0c0c0 1 00 1 1.5e+09 1e+08 2.5e+09 0 -270 90 270 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"d_phase" #0000ff 0 3 0 0 0>
	  <Mkr 1.99964e+09 223 -245 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 90 80 20 #000000 0 "Branch-Line Coupler 2000 MHz">
  <Text 90 140 12 #000000 0 "The model variables are tuned to correct the loading of\nthe tee junctions">
  <Text 140 710 12 #000000 0 "Reference: David M. Pozar, "Microwave Engineering", 4th Edition, 2012. Chapter 7.5">
</Paintings>
