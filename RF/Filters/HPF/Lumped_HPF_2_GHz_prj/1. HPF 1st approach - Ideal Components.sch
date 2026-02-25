<Qucs Schematic 24.2.1>
<Properties>
  <View=66,59,1287,735,1.27437,0,0>
  <Grid=10,10,1>
  <DataSet=1. HPF 1st approach - Ideal Components.dat>
  <DataDisplay=1. HPF 1st approach - Ideal Components.dpl>
  <OpenDisplay=0>
  <Script=1. Ideal Lumped Components.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Lumped HPF 2 GHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: 01/04/2024>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SP SP1 1 170 500 0 71 0 0 "lin" 1 "100MHz" 1 "5GHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 390 510 -31 16 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <GND * 1 620 430 0 0 0 0>
  <Pac P2 1 620 400 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 120 430 0 0 0 0>
  <Pac P1 1 120 400 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <Sub HPF_2GHz_Ideal 1 280 300 1 -157 0 0 "Ideal_HPF.sch" 0>
</Components>
<Wires>
  <620 240 620 370 "" 0 0 0 "">
  <420 240 620 240 "" 0 0 0 "">
  <120 240 120 370 "" 0 0 0 "">
  <120 240 250 240 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 790 469 456 329 3 #c0c0c0 1 00 1 0 5e+08 4e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
