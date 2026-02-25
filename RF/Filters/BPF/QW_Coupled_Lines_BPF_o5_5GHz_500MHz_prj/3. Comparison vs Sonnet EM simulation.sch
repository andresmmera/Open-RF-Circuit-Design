<Qucs Schematic 24.2.0>
<Properties>
  <View=-231,-183,3454,1812,0.648373,0,0>
  <Grid=10,10,1>
  <DataSet=3. Comparison vs Sonnet EM simulation.dat>
  <DataDisplay=3. Comparison vs Sonnet EM simulation.dpl>
  <OpenDisplay=0>
  <Script=SteppedLPF_o5_2GHz.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=QW Line Coupled BPF fc = 5 GHz>
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
  <GND * 1 280 220 0 0 0 0>
  <Pac P3 1 280 190 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 550 220 0 0 0 0>
  <Pac P4 1 550 190 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 410 150 0 0 0 0>
  <Eqn Eqn3 1 403 242 -28 15 0 0 "S21_dB_Sonnet=dB(S[4,3])" 1 "S11_dB_Sonnet=dB(S[3,3])" 1 "yes" 0>
  <Pac P5 1 750 720 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 750 750 0 0 0 0>
  <.SP SP1 1 170 700 0 71 0 0 "lin" 1 "4.25GHz" 1 "5.75GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SUBST RO4003C 1 410 740 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0" 1 "1e-10" 1 "0" 1>
  <Pac P6 1 90 590 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 90 620 0 0 0 0>
  <MOPEN MS1 1 160 480 -39 14 1 2 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS2 1 280 420 -28 -53 1 0 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS3 1 430 480 -25 -49 1 0 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS4 1 580 540 -29 -51 1 0 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS5 1 730 600 -22 -53 1 0 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS6 1 670 630 -26 37 0 0 "RO4003C" 0 "W1" 1 "L1" 1 "S1" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS7 1 610 660 -41 10 1 2 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS8 1 520 570 -26 37 0 0 "RO4003C" 0 "W2" 1 "L2" 1 "S2" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS9 1 460 600 -53 9 1 2 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS10 1 370 510 -26 37 0 0 "RO4003C" 0 "W2" 1 "L2" 1 "S2" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS11 1 310 540 -39 15 1 2 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS12 1 220 450 -26 37 0 0 "RO4003C" 0 "W1" 1 "L1" 1 "S1" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <SPfile X1 1 410 120 -26 -57 0 0 "Coupled Line BPF o3 5 GHz.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Eqn Eqn5 1 720 820 -31 16 0 0 "L1=8.93m" 1 "yes" 0>
  <Eqn Eqn6 1 720 910 -31 16 0 0 "L2=8.78m" 1 "yes" 0>
  <Eqn Eqn7 1 830 820 -31 16 0 0 "S1=103.000u" 1 "yes" 0>
  <Eqn Eqn8 1 830 910 -31 16 0 0 "S2=510u" 1 "yes" 0>
  <Eqn Eqn9 1 930 820 -31 16 0 0 "W1=760u" 1 "yes" 0>
  <Eqn Eqn10 1 930 910 -31 16 0 0 "W2=1.08m" 1 "yes" 0>
  <Eqn Eqn4 1 550 800 -28 15 0 0 "S21_dB_MS=dB(S[2,1])" 1 "S11_dB_MS=dB(S[1,1])" 1 "yes" 0>
</Components>
<Wires>
  <440 120 550 120 "" 0 0 0 "">
  <550 120 550 160 "" 0 0 0 "">
  <280 120 280 160 "" 0 0 0 "">
  <280 120 380 120 "" 0 0 0 "">
  <750 660 750 690 "" 0 0 0 "">
  <700 660 750 660 "" 0 0 0 "">
  <550 600 640 600 "" 0 0 0 "">
  <400 540 490 540 "" 0 0 0 "">
  <250 480 340 480 "" 0 0 0 "">
  <90 420 90 560 "" 0 0 0 "">
  <90 420 190 420 "" 0 0 0 "">
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
  <Text 170 890 12 #000000 0 "Coupled-line bandpass filter \n Chebyshev 4.75GHz...5.25GHz \n Impedance matching 50 Ohm">
  <Text 1150 380 12 #000000 0 "Sonnet EM simulation">
  <Line 1250 260 -20 20 #000000 1 1>
  <Line 1220 380 -10 -80 #000000 1 1>
  <Text 1200 220 12 #000000 0 "Qucs-S MS models">
</Paintings>
