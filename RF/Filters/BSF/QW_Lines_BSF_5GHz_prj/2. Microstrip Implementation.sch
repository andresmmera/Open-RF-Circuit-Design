<Qucs Schematic 24.2.0>
<Properties>
  <View=-202,61,1443,968,1.07182,151,0>
  <Grid=10,10,1>
  <DataSet=2. Microstrip Implementation.dat>
  <DataDisplay=2. Microstrip Implementation.dpl>
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
  <Eqn Eqn1 1 520 830 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <SUBST RO4003C 1 340 770 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0" 1 "1e-10" 1 "0" 1>
  <Pac P1 1 130 510 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 130 540 0 0 0 0>
  <MLIN MS1 1 190 360 -26 15 0 0 "RO4003C" 0 "W0" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS3 1 340 360 -26 15 0 0 "RO4003C" 0 "W0" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS5 1 480 360 -26 15 0 0 "RO4003C" 0 "W0" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS2 1 270 270 -64 -26 0 3 "RO4003C" 0 "W1" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS4 1 410 270 -63 -26 0 3 "RO4003C" 0 "W2" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS6 1 550 270 20 -26 0 1 "RO4003C" 0 "W1" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Pac P2 1 700 510 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 700 540 0 0 0 0>
  <MLIN MS7 1 620 360 -26 15 0 0 "RO4003C" 0 "W0" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <.SP SP1 1 140 730 0 70 0 0 "lin" 1 "0.5GHz" 1 "10GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <MTEE MS8 1 270 360 -26 34 0 2 "RO4003C" 0 "W0" 1 "W0" 1 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS9 1 550 360 -26 34 0 2 "RO4003C" 0 "W0" 1 "W0" 1 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS10 1 410 360 -26 15 0 2 "RO4003C" 0 "W0" 1 "W0" 1 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MOPEN MS12 1 550 210 15 -12 0 1 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS13 1 410 210 15 -12 0 1 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS11 1 270 210 15 -12 0 1 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <Eqn Eqn2 1 120 200 -31 16 0 0 "W0=1.1m" 1 "L4=9.5m" 1 "W1=100u" 1 "W2=270u" 1 "yes" 0>
</Components>
<Wires>
  <270 300 270 330 "" 0 0 0 "">
  <410 300 410 330 "" 0 0 0 "">
  <220 360 240 360 "" 0 0 0 "">
  <130 360 130 480 "" 0 0 0 "">
  <130 360 160 360 "" 0 0 0 "">
  <370 360 380 360 "" 0 0 0 "">
  <510 360 520 360 "" 0 0 0 "">
  <550 300 550 330 "" 0 0 0 "">
  <700 360 700 480 "" 0 0 0 "">
  <650 360 700 360 "" 0 0 0 "">
  <300 360 310 360 "" 0 0 0 "">
  <580 360 590 360 "" 0 0 0 "">
  <440 360 450 360 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 839 540 447 330 3 #c0c0c0 1 00 0 0 1e+09 1e+10 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 490 730 12 #000000 0 "Quarter wave bandpass filter \n Chebyshev 4GHz...6GHz \n Impedance matching 50 Ohm">
</Paintings>
