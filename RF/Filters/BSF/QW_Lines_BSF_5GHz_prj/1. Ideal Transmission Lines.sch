<Qucs Schematic 24.2.0>
<Properties>
  <View=-28,14,1510,865,1.01176,0,0>
  <Grid=10,10,1>
  <DataSet=1. Ideal Transmission Lines.dat>
  <DataDisplay=1. Ideal Transmission Lines.dpl>
  <OpenDisplay=0>
  <Script=1. Ideal Transmission Lines.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=QW Lines BSF 5 GHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: 01/04/24>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SP SP1 1 120 560 0 68 0 0 "lin" 1 "3GHz" 1 "7GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 500 660 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <TLIN Line1 1 180 280 -26 20 0 0 "50" 1 "0.0149896" 1 "0 dB" 0 "26.85" 0>
  <GND * 1 120 460 0 0 0 0>
  <Pac P1 1 120 430 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <TLIN Line3 1 300 280 -26 20 0 0 "50" 1 "0.0149896" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line2 1 260 150 20 -26 0 1 "252.956" 1 "0.0149896" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line5 1 420 280 -26 20 0 0 "50" 1 "0.0149896" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line4 1 380 150 20 -26 0 1 "164.029" 1 "0.0149896" 1 "0 dB" 0 "26.85" 0>
  <GND * 1 630 460 0 0 0 0>
  <Pac P2 1 630 430 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <TLIN Line7 1 550 280 -26 20 0 0 "50" 1 "0.0149896" 1 "0 dB" 0 "26.85" 0>
  <TLIN Line6 1 510 150 20 -26 0 1 "252.956" 1 "0.0149896" 1 "0 dB" 0 "26.85" 0>
</Components>
<Wires>
  <120 280 150 280 "" 0 0 0 "">
  <120 280 120 400 "" 0 0 0 "">
  <210 280 260 280 "" 0 0 0 "">
  <260 280 270 280 "" 0 0 0 "">
  <260 180 260 280 "" 0 0 0 "">
  <330 280 380 280 "" 0 0 0 "">
  <380 280 390 280 "" 0 0 0 "">
  <380 180 380 280 "" 0 0 0 "">
  <450 280 510 280 "" 0 0 0 "">
  <510 280 520 280 "" 0 0 0 "">
  <510 180 510 280 "" 0 0 0 "">
  <580 280 630 280 "" 0 0 0 "">
  <630 280 630 400 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 770 470 456 330 3 #c0c0c0 1 00 1 4e+09 2e+08 6e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 470 560 12 #000000 0 "Quarter wave bandpass filter \n Chebyshev 4GHz...6GHz \n Impedance matching 50 Ohm">
</Paintings>
