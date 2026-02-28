<Qucs Schematic 25.2.0>
<Properties>
  <View=-495,-48,1937,1336,0.780204,37,225>
  <Grid=10,10,1>
  <DataSet=2_2_DoubleBox_BranchLine_MLIN_JunctionsFees.dat>
  <DataDisplay=2_2_DoubleBox_BranchLine_MLIN_JunctionsFees.dpl>
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
  <Eqn Eqn1 1 450 770 -28 15 0 0 "S11_dB=dB(S[1,1])" 1 "S21_dB=dB(S[2,1])" 1 "S31_dB=dB(S[3,1])" 1 "S32_dB=dB(S[3,2])" 1 "yes" 0>
  <.SP SP1 1 90 770 0 56 0 0 "log" 1 "1500 MHz" 1 "2500 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn3 1 620 900 -32 18 0 0 "mm=1e-3" 1 "yes" 0>
  <SUBST Subst1 1 280 790 -30 24 0 0 "3.55" 1 "0.508mm" 1 "32um" 1 "0.0027" 1 "2.43902e-08" 1 "1.5e-07" 1>
  <Port P1 5 1440 50 -23 12 0 0 "1" 0 "analog" 0>
  <GND * 1 90 520 0 0 0 0>
  <GND * 1 780 540 0 0 0 0>
  <GND * 1 780 690 0 0 0 0>
  <R R1 1 90 640 -34 67 0 1 "50.0Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 90 670 0 0 0 0>
  <MLIN MLIN1 1 210 520 20 -30 1 1 "Subst1" 0 "W121_mm" 1 "L121_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN2 1 630 520 20 -30 1 1 "Subst1" 0 "W121_mm" 1 "L121_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN3 1 330 430 -35 -81 1 2 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN4 1 540 430 -35 -81 1 2 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN5 1 330 600 -34 16 1 2 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN6 1 540 600 -34 16 1 2 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN7 1 420 520 16 -34 1 3 "Subst1" 0 "W35_mm" 1 "L35_mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <Pac T1 1 90 490 -36 -152 0 1 "1" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac T2 1 780 510 -35 -158 0 1 "2" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac T3 1 780 660 -36 57 0 1 "3" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <MLIN MLIN8 5 130 430 -35 -81 1 2 "Subst1" 0 "W50_mm" 0 "Lfeed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MTEE MS1 5 210 430 -26 -125 0 0 "Subst1" 0 "W50_mm" 0 "W35_mm" 0 "W121_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS2 5 420 430 -26 -125 0 0 "Subst1" 0 "W35_mm" 0 "W35_mm" 0 "W35_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS3 5 420 600 -26 125 1 0 "Subst1" 0 "W35_mm" 0 "W35_mm" 0 "W35_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN MLIN9 5 700 430 -35 -81 1 2 "Subst1" 0 "W50_mm" 0 "Lfeed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MLIN10 5 710 600 -35 -81 1 2 "Subst1" 0 "W50_mm" 0 "Lfeed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MTEE MS4 5 630 430 -26 -125 0 0 "Subst1" 0 "W35_mm" 0 "W50_mm" 0 "W121_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS5 5 630 600 -26 106 1 0 "Subst1" 0 "W35_mm" 0 "W50_mm" 0 "W121_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <Eqn Variablesmm1 1 660 133 -32 18 0 0 "W121_mm=W121*mm" 1 "L121_mm=L121*mm" 1 "W50_mm=W50*mm" 1 "W35_mm=W35*mm" 1 "L35_mm=L35*mm" 1 "Lfeed_mm=Lfeed*mm" 1 "yes" 0>
  <Eqn Variables1 1 560 133 -32 18 0 0 "W121=0.134" 1 "L121=22.6" 1 "W50=1.1" 1 "W35=1.87" 1 "L35=22.1" 1 "Lfeed=5" 1 "yes" 0>
  <MTEE MS6 5 210 600 -26 125 1 0 "Subst1" 0 "W50_mm" 0 "W35_mm" 0 "W121_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN MLIN11 5 140 600 -35 -81 1 2 "Subst1" 0 "W50_mm" 0 "Lfeed_mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <Eqn Eqn4 1 730 870 -28 15 0 0 "S21_phase=(180/pi)*unwrap(angle(S[2,1]))" 1 "S31_phase=(180/pi)*unwrap(angle(S[3,1]))" 1 "d_phase=abs(S21_phase-S31_phase)-360" 1 "yes" 0>
</Components>
<Wires>
  <570 430 600 430 "" 0 0 0 "">
  <570 600 600 600 "" 0 0 0 "">
  <210 460 210 490 "" 0 0 0 "">
  <360 430 390 430 "" 0 0 0 "">
  <420 550 420 570 "" 0 0 0 "">
  <160 430 180 430 "" 0 0 0 "">
  <240 430 300 430 "" 0 0 0 "">
  <90 430 90 460 "" 0 0 0 "">
  <90 430 100 430 "" 0 0 0 "">
  <780 430 780 480 "" 0 0 0 "">
  <450 430 510 430 "" 0 0 0 "">
  <420 460 420 490 "" 0 0 0 "">
  <360 600 390 600 "" 0 0 0 "">
  <450 600 510 600 "" 0 0 0 "">
  <780 600 780 630 "" 0 0 0 "">
  <730 430 780 430 "" 0 0 0 "">
  <740 600 780 600 "" 0 0 0 "">
  <660 430 670 430 "" 0 0 0 "">
  <660 600 680 600 "" 0 0 0 "">
  <630 550 630 570 "" 0 0 0 "">
  <630 460 630 490 "" 0 0 0 "">
  <210 550 210 570 "" 0 0 0 "">
  <240 600 300 600 "" 0 0 0 "">
  <90 610 90 600 "" 0 0 0 "">
  <180 600 170 600 "" 0 0 0 "">
  <110 600 90 600 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 937 369 490 278 3 #c0c0c0 1 00 1 1.5e+09 1e+08 2.5e+09 0 -30 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 1 3 0 0 0>
	<"S21_dB" #ff0000 1 3 0 0 0>
	  <Mkr 1.99964e+09 307 -273 3 0 0>
	<"S31_dB" #005500 1 3 0 0 0>
	<"S32_dB" #000000 1 3 0 0 0>
  </Rect>
  <Rect 937 799 490 278 3 #c0c0c0 1 00 1 1.5e+09 1e+08 2.5e+09 0 -100 2 -80 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"d_phase" #0000ff 0 3 0 0 0>
	  <Mkr 1.99964e+09 197 -270 3 0 0>
	  <Mkr 1.79988e+09 45 -270 3 0 0>
	  <Mkr 2.19887e+09 342 -97 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 70 60 20 #000000 0 "Double-Box Branch-Line Coupler 2000 MHz">
  <Text 40 150 12 #000000 0 "Tee-junctions and feed lines are added to refine the model.\nNotice that the center frequency is pulled to lower frequencies">
</Paintings>
