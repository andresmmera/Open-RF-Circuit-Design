<Qucs Schematic 24.2.0>
<Properties>
  <View=-580,-423,2324,1184,0.648373,129,106>
  <Grid=10,10,1>
  <DataSet=3. Comparison vs Sonnet EM simulation.dat>
  <DataDisplay=3. Comparison vs Sonnet EM simulation.dpl>
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
  <Pac P1 1 153 562 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 153 592 0 0 0 0>
  <SUBST RO4003C 1 393 732 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0" 1 "1e-10" 1 "0" 1>
  <.SP SP1 1 180 710 0 69 0 0 "lin" 1 "200MHz" 1 "8GHz" 1 "391" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <MLIN MS1 1 213 412 -26 15 0 0 "RO4003C" 0 "100u" 1 "4.115m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS2 1 303 412 -26 15 0 0 "RO4003C" 0 "5m" 1 "5.616m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS3 1 393 412 -26 15 0 0 "RO4003C" 0 "100u" 1 "8.618m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS4 1 483 412 -26 15 0 0 "RO4003C" 0 "5m" 1 "5.616m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS5 1 573 412 -26 15 0 0 "RO4003C" 0 "100u" 1 "4.115m" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Eqn Eqn2 1 543 792 -28 15 0 0 "S21_dB_MS=dB(S[2,1])" 1 "S11_dB_MS=dB(S[1,1])" 1 "yes" 0>
  <GND * 1 280 220 0 0 0 0>
  <Pac P3 1 280 190 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 550 220 0 0 0 0>
  <Pac P4 1 550 190 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 410 150 0 0 0 0>
  <SPfile X1 1 410 120 -26 -57 0 0 "Stepped-Z LPF o5 2 GHz - Sonnet EM.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Eqn Eqn3 1 403 242 -28 15 0 0 "S21_dB_Sonnet=dB(S[4,3])" 1 "S11_dB_Sonnet=dB(S[3,3])" 1 "yes" 0>
  <Pac P2 1 653 552 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 653 582 0 0 0 0>
</Components>
<Wires>
  <153 412 153 532 "" 0 0 0 "">
  <153 412 183 412 "" 0 0 0 "">
  <243 412 273 412 "" 0 0 0 "">
  <333 412 363 412 "" 0 0 0 "">
  <423 412 453 412 "" 0 0 0 "">
  <513 412 543 412 "" 0 0 0 "">
  <440 120 550 120 "" 0 0 0 "">
  <550 120 550 160 "" 0 0 0 "">
  <280 120 280 160 "" 0 0 0 "">
  <280 120 380 120 "" 0 0 0 "">
  <603 412 653 412 "" 0 0 0 "">
  <653 412 653 522 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 870 495 429 295 3 #c0c0c0 1 00 1 -1 0.2 1 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB_MS" #0000ff 0 3 0 0 0>
	<"S21_dB_MS" #ff0000 0 3 0 0 0>
	<"S11_dB_Sonnet" #0000ff 2 3 0 2 0>
	<"S21_dB_Sonnet" #ff0000 2 3 0 2 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 1000 420 12 #000000 0 "Sonnet EM simulation">
  <Line 1050 310 0 100 #000000 1 1>
  <Line 980 280 70 130 #000000 1 1>
  <Text 1070 240 12 #000000 0 "Qucs-S MS models">
  <Line 1060 240 -40 -30 #000000 1 1>
  <Line 1060 250 -10 20 #000000 1 1>
</Paintings>
