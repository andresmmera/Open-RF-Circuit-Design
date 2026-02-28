<Qucs Schematic 25.2.0>
<Properties>
  <View=-471,-38,1931,1362,0.652672,0,0>
  <Grid=10,10,1>
  <DataSet=1_DoubleBox_BranchLine_TLIN.dat>
  <DataDisplay=1_DoubleBox_BranchLine_TLIN.dpl>
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
  <.ID 210 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 10 -10 12 #000000 0 "Ideal transmission lines">
  <Rectangle -20 -20 220 50 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Eqn Eqn1 1 300 800 -28 15 0 0 "S11_dB=dB(S[1,1])" 1 "S21_dB=dB(S[2,1])" 1 "S31_dB=dB(S[3,1])" 1 "S32_dB=dB(S[3,2])" 1 "yes" 0>
  <.SP SP1 1 110 790 0 56 0 0 "log" 1 "1500 MHz" 1 "2500 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Port P1 5 1460 60 -23 12 0 0 "1" 0 "analog" 0>
  <GND * 1 70 360 0 0 0 0>
  <GND * 1 790 360 0 0 0 0>
  <GND * 1 790 480 0 0 0 0>
  <R R1 1 190 460 -34 67 0 1 "50.0Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 190 490 0 0 0 0>
  <TLIN TLIN1 1 310 280 -33 -77 1 2 "35.4Ohm" 1 "37.5mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN TLIN2 1 310 400 -34 20 1 2 "35.4Ohm" 1 "37.5mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN TLIN3 1 190 340 10 -20 1 1 "121Ohm" 1 "37.5mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN TLIN4 1 430 340 10 -20 1 1 "35.4Ohm" 1 "37.5mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN TLIN5 1 550 280 -35 -74 1 2 "35.4Ohm" 1 "37.5mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN TLIN6 1 550 400 -34 21 1 2 "35.4Ohm" 1 "37.5mm" 1 "0 dB" 0 "26.85" 0>
  <TLIN TLIN7 1 670 340 10 -20 1 1 "121Ohm" 1 "37.5mm" 1 "0 dB" 0 "26.85" 0>
  <Pac T1 1 70 330 -35 71 0 1 "1" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac T2 1 790 330 -50 -131 0 1 "2" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac T3 1 790 450 -36 57 0 1 "3" 1 "50.0Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Eqn Eqn2 1 490 790 -28 15 0 0 "S21_phase=(180/pi)*unwrap(angle(S[2,1]))" 1 "S31_phase=(180/pi)*unwrap(angle(S[3,1]))" 1 "d_phase=abs(S21_phase-S31_phase)" 1 "yes" 0>
</Components>
<Wires>
  <70 280 190 280 "" 0 0 0 "">
  <70 280 70 300 "" 0 0 0 "">
  <670 280 790 280 "" 0 0 0 "">
  <790 280 790 300 "" 0 0 0 "">
  <670 400 790 400 "" 0 0 0 "">
  <790 400 790 420 "" 0 0 0 "">
  <190 400 190 430 "" 0 0 0 "">
  <190 280 280 280 "" 0 0 0 "">
  <580 280 670 280 "" 0 0 0 "">
  <670 280 670 310 "" 0 0 0 "">
  <670 370 670 400 "" 0 0 0 "">
  <580 400 670 400 "" 0 0 0 "">
  <190 280 190 310 "" 0 0 0 "">
  <190 400 280 400 "" 0 0 0 "">
  <190 370 190 400 "" 0 0 0 "">
  <340 280 430 280 "" 0 0 0 "">
  <430 280 520 280 "" 0 0 0 "">
  <430 280 430 310 "" 0 0 0 "">
  <340 400 430 400 "" 0 0 0 "">
  <430 370 430 400 "" 0 0 0 "">
  <430 400 520 400 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 917 389 490 278 3 #c0c0c0 1 00 1 1.5e+09 1e+08 2.5e+09 0 -30 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 1 3 0 0 0>
	<"S21_dB" #ff0000 1 3 0 0 0>
	  <Mkr 1.99964e+09 305 -274 3 0 0>
	<"S31_dB" #00aa00 1 3 0 0 0>
	<"S32_dB" #000000 1 3 0 0 0>
  </Rect>
  <Rect 917 839 490 278 3 #c0c0c0 1 00 1 1.5e+09 1e+08 2.5e+09 0 260 2 280 0 -270 90 180 315 0 225 1 0 0 "" "" "">
	<"d_phase" #0000ff 0 3 0 0 0>
	  <Mkr 1.99964e+09 197 -270 3 0 0>
	  <Mkr 1.79988e+09 45 -270 3 0 0>
	  <Mkr 2.19887e+09 342 -97 3 0 0>
	<"S21_phase" #ff0000 1 3 0 0 1>
	<"S31_phase" #005500 1 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
  <Text 60 50 20 #000000 0 "Branch-Line Coupler 2000 MHz">
  <Text 70 120 12 #000000 0 "The coupler is built according the design equations using ideal transmission lines">
</Paintings>
