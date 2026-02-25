<Qucs Schematic 24.2.0>
<Properties>
  <View=-218,-25,3029,1084,0.884903,144,39>
  <Grid=10,10,1>
  <DataSet=2. Microstrip implementation.dat>
  <DataDisplay=2. Microstrip implementation.dpl>
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
  <Eqn Eqn4 1 90 60 -31 16 0 0 "L1=8.93m" 1 "yes" 0>
  <Pac P2 1 790 620 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 790 650 0 0 0 0>
  <.SP SP1 1 210 600 0 71 0 0 "lin" 1 "4.25GHz" 1 "5.75GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SUBST RO4003C 1 450 640 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0" 1 "1e-10" 1 "0" 1>
  <Eqn Eqn7 1 590 700 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <Pac P1 1 130 490 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 130 520 0 0 0 0>
  <MOPEN MS2 1 200 380 -39 14 1 2 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS3 1 320 320 -28 -53 1 0 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS6 1 470 380 -25 -49 1 0 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS9 1 620 440 -29 -51 1 0 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS12 1 770 500 -22 -53 1 0 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS10 1 710 530 -26 37 0 0 "RO4003C" 0 "W1" 1 "L1" 1 "S1" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS11 1 650 560 -41 10 1 2 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS7 1 560 470 -26 37 0 0 "RO4003C" 0 "W2" 1 "L2" 1 "S2" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS8 1 500 500 -53 9 1 2 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS4 1 410 410 -26 37 0 0 "RO4003C" 0 "W2" 1 "L2" 1 "S2" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS5 1 350 440 -39 15 1 2 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS1 1 260 350 -26 37 0 0 "RO4003C" 0 "W1" 1 "L1" 1 "S1" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <Eqn Eqn5 1 90 150 -31 16 0 0 "L2=8.78m" 1 "yes" 0>
  <Eqn Eqn8 1 200 60 -31 16 0 0 "S1=103.000u" 1 "yes" 0>
  <Eqn Eqn10 1 200 150 -31 16 0 0 "S2=510u" 1 "yes" 0>
  <Eqn Eqn11 1 300 60 -31 16 0 0 "W1=760u" 1 "yes" 0>
  <Eqn Eqn12 1 300 150 -31 16 0 0 "W2=1.08m" 1 "yes" 0>
</Components>
<Wires>
  <790 560 790 590 "" 0 0 0 "">
  <740 560 790 560 "" 0 0 0 "">
  <590 500 680 500 "" 0 0 0 "">
  <440 440 530 440 "" 0 0 0 "">
  <290 380 380 380 "" 0 0 0 "">
  <130 320 130 460 "" 0 0 0 "">
  <130 320 230 320 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1000 435 429 295 3 #c0c0c0 1 00 1 0 1e+09 8e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
	  <Mkr 4.80686e+09 -16 -373 3 0 0>
	  <Mkr 5.20819e+09 352 -383 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 210 790 12 #000000 0 "Coupled-line bandpass filter \n Chebyshev 4.75GHz...5.25GHz \n Impedance matching 50 Ohm">
</Paintings>
