<Qucs Schematic 24.2.0>
<Properties>
  <View=159,109,1390,790,1.26401,0,0>
  <Grid=10,10,1>
  <DataSet=2. Microstrip implementation.dat>
  <DataDisplay=2. Microstrip implementation.dpl>
  <OpenDisplay=0>
  <Script=SteppedLPF_o5_2GHz.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Stepped LPF 2 GHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: 28/03/24>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <SUBST RO4003C 1 453 582 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0" 1 "1e-10" 1 "0" 1>
  <Eqn Eqn2 1 603 642 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <.SP SP1 1 240 560 0 68 0 0 "lin" 1 "200MHz" 1 "8GHz" 1 "391" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P1 1 243 412 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 243 442 0 0 0 0>
  <Pac P2 1 743 412 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 743 442 0 0 0 0>
  <MLIN MS1 1 303 262 -26 15 0 0 "RO4003C" 0 "100u" 1 "4.115m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS2 1 393 262 -26 15 0 0 "RO4003C" 0 "5m" 1 "5.616m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS3 1 483 262 -26 15 0 0 "RO4003C" 0 "100u" 1 "8.618m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS4 1 573 262 -26 15 0 0 "RO4003C" 0 "5m" 1 "5.616m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS5 1 663 262 -26 15 0 0 "RO4003C" 0 "100u" 1 "4.115m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
</Components>
<Wires>
  <243 262 243 382 "" 0 0 0 "">
  <243 262 273 262 "" 0 0 0 "">
  <743 262 743 382 "" 0 0 0 "">
  <693 262 743 262 "" 0 0 0 "">
  <333 262 363 262 "" 0 0 0 "">
  <423 262 453 262 "" 0 0 0 "">
  <513 262 543 262 "" 0 0 0 "">
  <603 262 633 262 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 920 525 429 295 3 #c0c0c0 1 00 1 0 1e+09 8e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
	  <Mkr 2e+09 60 -365 3 0 0>
	  <Mkr 4.06e+09 241 -276 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 573 542 12 #000000 0 "Stepped-impedance lowpass filter \nChebyshev o5 (r=0.01 dB) \nfc = 2GHz \nZ0 =  50 Ohm">
</Paintings>
