<Qucs Schematic 24.2.0>
<Properties>
  <View=-165,-100,2151,1110,0.71157,92,0>
  <Grid=10,10,1>
  <DataSet=2. Comparison vs Sonnet EM simulation.dat>
  <DataDisplay=2. Comparison vs Sonnet EM simulation.dpl>
  <OpenDisplay=0>
  <Script=SteppedLPF_o5_2GHz.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=QW Line Coupled BPF w/ stubs 5 GHz>
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
  <.SP SP1 1 300 710 0 71 0 0 "lin" 1 "4.25GHz" 1 "5.75GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SUBST RO4003C 1 540 750 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0" 1 "1e-10" 1 "0" 1>
  <Eqn Eqn4 1 680 810 -28 15 0 0 "S21_dB_MS=dB(S[2,1])" 1 "S11_dB_MS=dB(S[1,1])" 1 "yes" 0>
  <GND * 1 620 300 0 0 0 0>
  <MOPEN MS1 1 360 510 -39 14 1 2 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS2 1 480 450 -28 -53 1 0 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS3 1 630 510 -25 -49 1 0 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS4 1 780 570 -29 -51 1 0 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS5 1 930 630 -22 -53 1 0 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS6 1 870 660 -26 37 0 0 "RO4003C" 0 "W1" 1 "L1" 1 "S1" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS7 1 810 690 -41 10 1 2 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS8 1 720 600 -26 37 0 0 "RO4003C" 0 "W2" 1 "L2" 1 "S2" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS9 1 660 630 -53 9 1 2 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS10 1 570 540 -26 37 0 0 "RO4003C" 0 "W2" 1 "L2" 1 "S2" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS11 1 510 570 -39 15 1 2 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS12 1 420 480 -26 37 0 0 "RO4003C" 0 "W1" 1 "L1" 1 "S1" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS13 1 310 450 -26 15 0 0 "RO4003C" 0 "W1" 1 "L0" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS14 1 970 690 -26 15 0 0 "RO4003C" 0 "W1" 1 "L0" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS15 1 180 450 -26 15 0 0 "RO4003C" 0 "W1" 1 "L0" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Pac P5 1 50 590 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 50 620 0 0 0 0>
  <MLIN MS16 1 100 450 -26 15 0 0 "RO4003C" 0 "W_Z0" 1 "25.4mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS17 1 240 450 -26 15 0 2 "RO4003C" 0 "W1" 0 "W1" 0 "Wstub" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN MS18 1 240 360 15 -26 0 1 "RO4003C" 0 "Wstub" 1 "Lstub" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS19 1 240 280 15 -12 1 1 "RO4003C" 0 "Wstub" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MLIN MS20 1 1090 690 -26 15 0 0 "RO4003C" 0 "W1" 1 "L0" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Pac P6 1 1260 780 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 1260 810 0 0 0 0>
  <MLIN MS21 1 1180 690 -26 15 0 0 "RO4003C" 0 "W_Z0" 1 "25.4mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS22 1 1030 690 -14 -55 0 0 "RO4003C" 0 "W1" 0 "W1" 0 "Wstub" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN MS23 1 1030 790 -82 -30 0 1 "RO4003C" 0 "Wstub" 1 "Lstub" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS24 1 1030 880 -85 -26 1 3 "RO4003C" 0 "Wstub" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <SPfile X1 1 620 270 -75 -62 0 0 "Coupled Line BPF o3 with stubs 5 GHz.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Pac P3 1 540 320 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 540 350 0 0 0 0>
  <Pac P4 1 690 310 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 690 350 0 0 0 0>
  <Eqn Eqn3 1 763 362 -28 15 0 0 "S21_dB_Sonnet=dB(S[4,3])" 1 "S11_dB_Sonnet=dB(S[3,3])" 1 "yes" 0>
  <Eqn Eqn5 1 90 50 -31 16 0 0 "L1=8.920m" 1 "yes" 0>
  <Eqn Eqn6 1 90 140 -31 16 0 0 "L2=8.720m" 1 "yes" 0>
  <Eqn Eqn7 1 200 50 -31 16 0 0 "S1=564.954u" 1 "yes" 0>
  <Eqn Eqn8 1 200 140 -31 16 0 0 "S2=631.404u" 1 "yes" 0>
  <Eqn Eqn9 1 300 50 -31 16 0 0 "W1=0.930m" 1 "yes" 0>
  <Eqn Eqn10 1 300 140 -31 16 0 0 "W2=1.270m" 1 "yes" 0>
  <Eqn Eqn11 1 620 50 -31 16 0 0 "Lstub=7.101m" 1 "yes" 0>
  <Eqn Eqn12 1 620 130 -31 16 0 0 "Wstub=701.000u" 1 "yes" 0>
  <Eqn Eqn13 1 520 50 -31 16 0 0 "L0=1.750m" 1 "yes" 0>
  <Eqn Eqn14 1 790 50 -31 16 0 0 "W_Z0=1.1m" 1 "yes" 0>
</Components>
<Wires>
  <750 630 840 630 "" 0 0 0 "">
  <600 570 690 570 "" 0 0 0 "">
  <450 510 540 510 "" 0 0 0 "">
  <900 690 940 690 "" 0 0 0 "">
  <340 450 390 450 "" 0 0 0 "">
  <50 450 70 450 "" 0 0 0 "">
  <50 450 50 560 "" 0 0 0 "">
  <130 450 150 450 "" 0 0 0 "">
  <270 450 280 450 "" 0 0 0 "">
  <240 390 240 420 "" 0 0 0 "">
  <240 310 240 330 "" 0 0 0 "">
  <1120 690 1150 690 "" 0 0 0 "">
  <1260 690 1260 750 "" 0 0 0 "">
  <1210 690 1260 690 "" 0 0 0 "">
  <1030 720 1030 760 "" 0 0 0 "">
  <1030 820 1030 850 "" 0 0 0 "">
  <540 270 590 270 "" 0 0 0 "">
  <540 270 540 290 "" 0 0 0 "">
  <650 270 690 270 "" 0 0 0 "">
  <690 270 690 280 "" 0 0 0 "">
  <690 340 690 350 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 990 345 429 295 3 #c0c0c0 1 00 1 4.2e+09 2e+08 5.8e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB_MS" #0000ff 0 3 0 0 0>
	<"S21_dB_MS" #ff0000 0 3 0 0 0>
	<"S11_dB_Sonnet" #0000ff 2 3 0 2 0>
	<"S21_dB_Sonnet" #ff0000 2 3 0 2 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 300 900 12 #000000 0 "Coupled-line bandpass filter \n Chebyshev 4.75GHz...5.25GHz \n Impedance matching 50 Ohm">
  <Text 1360 130 12 #000000 0 "Qucs-S">
  <Text 1360 100 12 #000000 0 "Sonnet">
  <Line 1350 110 -40 0 #000000 2 2>
  <Line 1350 140 -40 0 #000000 2 1>
</Paintings>
