<Qucs Schematic 24.2.0>
<Properties>
  <View=216,10,1378,653,1.33904,0,0>
  <Grid=10,10,1>
  <DataSet=1. Ideal transmission lines.dat>
  <DataDisplay=1. Ideal transmission lines.dpl>
  <OpenDisplay=0>
  <Script=SteppedLPF_o5_2GHz.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Pac P1 1 280 320 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 280 350 0 0 0 0>
  <TLIN Line1 1 340 170 -26 20 0 0 "400" 1 "2.255m" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line2 1 430 170 -26 20 0 0 "20" 1 "12.45m" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line3 1 520 170 -26 20 0 0 "400" 1 "4.392m" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line4 1 610 170 -26 20 0 0 "20" 1 "12.45m" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line5 1 700 170 -26 20 0 0 "400" 1 "1.944m" 1 "0 dB" 0 "26.85" 0>
  <Pac P2 1 780 320 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 780 350 0 0 0 0>
  <Eqn Eqn1 1 490 460 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <.SP SP1 1 290 450 0 67 0 0 "lin" 1 "200MHz" 1 "8GHz" 1 "391" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <280 170 280 290 "" 0 0 0 "">
  <280 170 310 170 "" 0 0 0 "">
  <780 170 780 290 "" 0 0 0 "">
  <730 170 780 170 "" 0 0 0 "">
  <370 170 400 170 "" 0 0 0 "">
  <460 170 490 170 "" 0 0 0 "">
  <550 170 580 170 "" 0 0 0 "">
  <640 170 670 170 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 930 404 396 264 3 #c0c0c0 1 00 1 0 1e+09 8e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
	  <Mkr 2e+09 180 -354 3 0 0>
	  <Mkr 4.06e+09 241 -245 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
