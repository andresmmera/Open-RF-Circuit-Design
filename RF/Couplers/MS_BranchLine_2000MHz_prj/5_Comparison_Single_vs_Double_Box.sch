<Qucs Schematic 25.2.0>
<Properties>
  <View=-2006,-610,2673,2073,0.826446,1731,482>
  <Grid=10,10,1>
  <DataSet=5_Comparison_Single_vs_Double_Box.dat>
  <DataDisplay=5_Comparison_Single_vs_Double_Box.dpl>
  <OpenDisplay=0>
  <Script=5_Comparison_Single_vs_Double_Box.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Single-Box vs Double-Box>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 28, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Pac T1 1 200 250 -100 -20 0 1 "1" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 200 280 0 0 0 0>
  <Pac T2 1 510 250 25 -20 0 1 "2" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 510 280 0 0 0 0>
  <Pac T3 1 470 330 25 -20 0 1 "3" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 470 360 0 0 0 0>
  <R R1 1 250 330 23 -13 0 1 "50.0Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 250 360 0 0 0 0>
  <Sub SUB1 5 300 230 30 54 0 0 "4_BranchLine_EMerge_FineTuned_data.sch" 0>
  <Pac T4 1 170 500 -100 -20 0 1 "4" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 170 530 0 0 0 0>
  <Pac T5 1 550 500 25 -20 0 1 "5" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 550 530 0 0 0 0>
  <Pac T6 1 510 580 25 -20 0 1 "6" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 510 610 0 0 0 0>
  <R R2 1 220 580 23 -13 0 1 "50.0Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 220 610 0 0 0 0>
  <Sub SUB2 1 270 480 30 54 0 0 "4_DoubleBox_BranchLine_EMerge_FineTuned_data.sch" 0>
  <Eqn Eqn2 1 460 910 -32 18 0 0 "mm=1e-3" 1 "yes" 0>
  <SUBST Subst1 1 290 810 -30 24 0 0 "3.55" 1 "0.508mm" 1 "32um" 1 "0.0027" 1 "2.43902e-08" 1 "1.5e-07" 1>
  <Eqn SingleBoxMag 1 590 720 -28 15 0 0 "S11_dB_S=dB(S[1,1])" 1 "S21_dB_S=dB(S[2,1])" 1 "S31_dB_S=dB(S[3,1])" 1 "S32_dB_S=dB(S[3,2])" 1 "yes" 0>
  <Eqn DoubleBoxMag 1 600 870 -28 15 0 0 "S11_dB_D=dB(S[4,4])" 1 "S21_dB_D=dB(S[5,4])" 1 "S31_dB_D=dB(S[6,4])" 1 "S32_dB_D=dB(S[6,5])" 1 "yes" 0>
  <Eqn DoubleBoxPhase 1 800 870 -28 15 0 0 "S21_phase_D=(180/pi)*unwrap(angle(S[5,4]))" 1 "S31_phase_D=(180/pi)*unwrap(angle(S[6,4]))" 1 "d_phase_D=abs(S21_phase_D-S31_phase_D)" 1 "yes" 0>
  <Eqn SingleBoxPhase 1 790 720 -28 15 0 0 "S21_phase_S=(180/pi)*unwrap(angle(S[2,1]))" 1 "S31_phase_S=(180/pi)*unwrap(angle(S[3,1]))" 1 "d_phase_S=abs(S21_phase_S-S31_phase_S)" 1 "yes" 0>
  <.SP SP1 1 100 790 0 56 0 0 "log" 1 "1000 MHz" 1 "3000 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <200 200 200 220 "" 0 0 0 "">
  <450 200 510 200 "" 0 0 0 "">
  <450 260 470 260 "" 0 0 0 "">
  <250 260 280 260 "" 0 0 0 "">
  <250 260 250 300 "" 0 0 0 "">
  <470 260 470 300 "" 0 0 0 "">
  <510 200 510 220 "" 0 0 0 "">
  <200 200 280 200 "" 0 0 0 "">
  <170 450 170 470 "" 0 0 0 "">
  <490 450 550 450 "" 0 0 0 "">
  <490 510 510 510 "" 0 0 0 "">
  <220 510 250 510 "" 0 0 0 "">
  <220 510 220 550 "" 0 0 0 "">
  <510 510 510 550 "" 0 0 0 "">
  <550 450 550 470 "" 0 0 0 "">
  <170 450 250 450 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 760 340 240 160 3 #c0c0c0 1 00 1 1.5e+09 2e+08 2.5e+09 0 -7 1 -2 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S21_dB_S" #0000ff 1 3 0 0 0>
	<"S21_dB_D" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 1140 340 240 160 3 #c0c0c0 1 00 1 1.5e+09 2e+08 2.5e+09 0 -7 1 -2 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S31_dB_S" #0000ff 1 3 0 0 0>
	<"S31_dB_D" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 760 610 240 160 3 #c0c0c0 1 00 0 1.5e+09 2e+08 2.5e+09 0 80 2 100 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"d_phase_D" #ff0000 1 3 0 0 0>
	<"d_phase_S" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 1150 610 240 160 3 #c0c0c0 1 00 0 1.5e+09 2e+08 2.5e+09 0 -45 5 -15 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S32_dB_S" #0000ff 0 3 0 0 0>
	<"S32_dB_D" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 80 70 20 #000000 0 "Comparison between Single-Box and Double-Box couplers">
  <Text 830 140 15 #000000 0 "In-phase IL">
  <Text 1200 140 15 #000000 0 "Quadrature IL">
  <Text 810 420 15 #000000 0 "Phase balance">
  <Text 1230 420 15 #000000 0 "Isolation">
</Paintings>
