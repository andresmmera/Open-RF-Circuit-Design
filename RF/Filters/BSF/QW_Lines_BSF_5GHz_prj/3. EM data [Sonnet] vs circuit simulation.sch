<Qucs Schematic 24.2.0>
<Properties>
  <View=-212,-297,3228,1724,0.474158,75,0>
  <Grid=10,10,1>
  <DataSet=3. EM data [Sonnet] vs circuit simulation.dat>
  <DataDisplay=3. EM data [Sonnet] vs circuit simulation.dpl>
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
  <SUBST RO4003C 1 270 830 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0" 1 "1e-10" 1 "0" 1>
  <.SP SP1 1 70 790 0 67 0 0 "lin" 1 "0.5GHz" 1 "10GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P1 1 90 670 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 90 700 0 0 0 0>
  <MLIN MS1 1 150 520 -26 15 0 0 "RO4003C" 0 "W0" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS3 1 300 520 -26 15 0 0 "RO4003C" 0 "W0" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS5 1 440 520 -26 15 0 0 "RO4003C" 0 "W0" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS2 1 230 430 -64 -26 0 3 "RO4003C" 0 "W1" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS4 1 370 430 -63 -26 0 3 "RO4003C" 0 "W2" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS6 1 510 430 20 -26 0 1 "RO4003C" 0 "W1" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Pac P2 1 660 670 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 660 700 0 0 0 0>
  <MLIN MS7 1 580 520 -26 15 0 0 "RO4003C" 0 "W0" 1 "L4" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS8 1 230 520 -26 34 0 2 "RO4003C" 0 "W0" 1 "W0" 1 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS9 1 510 520 -26 34 0 2 "RO4003C" 0 "W0" 1 "W0" 1 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS10 1 370 520 -26 15 0 2 "RO4003C" 0 "W0" 1 "W0" 1 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MOPEN MS12 1 510 370 15 -12 0 1 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS13 1 370 370 15 -12 0 1 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS11 1 230 370 15 -12 0 1 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <Eqn Eqn1 1 450 890 -28 15 0 0 "S21_dB_MS=dB(S[2,1])" 1 "S11_dB_MS=dB(S[1,1])" 1 "yes" 0>
  <Eqn Eqn4 1 690 820 -31 16 0 0 "W0=1.1m" 1 "L4=9.5m" 1 "W1=100u" 1 "W2=270u" 1 "yes" 0>
  <Pac P4 1 350 160 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 350 190 0 0 0 0>
  <Pac P3 1 140 160 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 140 190 0 0 0 0>
  <GND * 1 250 120 0 0 0 0>
  <SPfile X1 1 250 90 -26 -57 0 0 "QW Lines BSF o3 5 GHz.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Eqn Eqn3 1 500 110 -28 15 0 0 "S21_dB_Sonnet=dB(S[4,3])" 1 "S11_dB_Sonnet=dB(S[3,3])" 1 "yes" 0>
</Components>
<Wires>
  <230 460 230 490 "" 0 0 0 "">
  <370 460 370 490 "" 0 0 0 "">
  <180 520 200 520 "" 0 0 0 "">
  <90 520 90 640 "" 0 0 0 "">
  <90 520 120 520 "" 0 0 0 "">
  <330 520 340 520 "" 0 0 0 "">
  <470 520 480 520 "" 0 0 0 "">
  <510 460 510 490 "" 0 0 0 "">
  <660 520 660 640 "" 0 0 0 "">
  <610 520 660 520 "" 0 0 0 "">
  <260 520 270 520 "" 0 0 0 "">
  <540 520 550 520 "" 0 0 0 "">
  <400 520 410 520 "" 0 0 0 "">
  <350 90 350 130 "" 0 0 0 "">
  <280 90 350 90 "" 0 0 0 "">
  <140 90 140 130 "" 0 0 0 "">
  <140 90 220 90 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 856 532 510 352 3 #c0c0c0 1 00 1 5e+08 1e+09 1e+10 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB_MS" #0000ff 0 3 0 0 0>
	<"S21_dB_MS" #ff0000 0 3 0 0 0>
	<"S21_dB_Sonnet" #ff0000 2 3 0 2 0>
	<"S11_dB_Sonnet" #0000ff 2 3 0 2 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 420 790 12 #000000 0 "Quarter wave bandpass filter \n Chebyshev 4GHz...6GHz \n Impedance matching 50 Ohm">
  <Text 1270 440 12 #000000 0 "Sonnet">
  <Line 1260 450 -40 0 #000000 2 2>
  <Text 1270 470 12 #000000 0 "Qucs-S">
  <Line 1260 480 -40 0 #000000 2 1>
</Paintings>
