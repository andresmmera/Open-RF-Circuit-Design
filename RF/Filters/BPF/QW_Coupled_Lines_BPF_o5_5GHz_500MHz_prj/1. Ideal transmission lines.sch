<Qucs Schematic 24.2.0>
<Properties>
  <View=-631,-1012,3863,737,0.980241,797,785>
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
  <Pac P1 1 270 190 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 270 220 0 0 0 0>
  <CTLIN Line1 1 330 0 -26 16 0 0 "73.5423" 1 "38.6397" 1 "14.99m" 1 "1" 0 "1" 0 "0 dB" 0 "0 dB" 0 "26.85" 0>
  <CTLIN Line2 1 420 20 -26 16 0 0 "56.4424" 1 "44.8918" 1 "14.99m" 1 "1" 0 "1" 0 "0 dB" 0 "0 dB" 0 "26.85" 0>
  <CTLIN Line3 1 510 40 -26 16 0 0 "56.4424" 1 "44.8918" 1 "14.99m" 1 "1" 0 "1" 0 "0 dB" 0 "0 dB" 0 "26.85" 0>
  <CTLIN Line4 1 600 60 -26 16 0 0 "73.5423" 1 "38.6397" 1 "14.99m" 1 "1" 0 "1" 0 "0 dB" 0 "0 dB" 0 "26.85" 0>
  <Pac P2 1 680 130 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 680 160 0 0 0 0>
  <.SP SP1 1 280 270 0 69 0 0 "lin" 1 "4.4GHz" 1 "5.6GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 660 370 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
</Components>
<Wires>
  <270 -10 270 160 "" 0 0 0 "">
  <270 -10 300 -10 "" 0 0 0 "">
  <680 70 680 100 "" 0 0 0 "">
  <630 70 680 70 "" 0 0 0 "">
  <360 10 390 10 "" 0 0 0 "">
  <450 30 480 30 "" 0 0 0 "">
  <540 50 570 50 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 920 345 429 295 3 #c0c0c0 1 00 1 0 1e+09 8e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
	  <Mkr 4.80134e+09 -16 -373 3 0 0>
	  <Mkr 5.20669e+09 352 -383 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 280 460 12 #000000 0 "Coupled-line bandpass filter \n Chebyshev 4.8GHz...5.2GHz \n Impedance matching 50 Ohm">
</Paintings>
