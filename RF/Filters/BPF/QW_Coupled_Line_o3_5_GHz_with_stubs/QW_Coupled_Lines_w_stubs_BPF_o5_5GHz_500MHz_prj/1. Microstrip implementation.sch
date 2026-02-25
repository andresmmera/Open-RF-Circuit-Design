<Qucs Schematic 24.2.0>
<Properties>
  <View=-1772,-547,3144,1858,0.820951,1329,341>
  <Grid=10,10,1>
  <DataSet=1. Microstrip implementation.dat>
  <DataDisplay=1. Microstrip implementation.dpl>
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
  <Eqn Eqn4 1 90 60 -31 16 0 0 "L1=8.920m" 1 "yes" 0>
  <Eqn Eqn5 1 90 150 -31 16 0 0 "L2=8.720m" 1 "yes" 0>
  <Eqn Eqn8 1 200 60 -31 16 0 0 "S1=564.954u" 1 "yes" 0>
  <Eqn Eqn10 1 200 150 -31 16 0 0 "S2=631.404u" 1 "yes" 0>
  <Eqn Eqn11 1 300 60 -31 16 0 0 "W1=0.930m" 1 "yes" 0>
  <Eqn Eqn12 1 300 150 -31 16 0 0 "W2=1.270m" 1 "yes" 0>
  <Eqn Eqn14 1 620 60 -31 16 0 0 "Lstub=7.101m" 1 "yes" 0>
  <Eqn Eqn15 1 620 140 -31 16 0 0 "Wstub=701.000u" 1 "yes" 0>
  <MOPEN MS2 1 370 490 -39 14 1 2 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS3 1 490 430 -28 -53 1 0 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS6 1 640 490 -25 -49 1 0 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS9 1 790 550 -29 -51 1 0 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS12 1 940 610 -22 -53 1 0 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS10 1 880 640 -26 37 0 0 "RO4003C" 0 "W1" 1 "L1" 1 "S1" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS11 1 820 670 -41 10 1 2 "RO4003C" 0 "W1" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS7 1 730 580 -26 37 0 0 "RO4003C" 0 "W2" 1 "L2" 1 "S2" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS8 1 670 610 -53 9 1 2 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS4 1 580 520 -26 37 0 0 "RO4003C" 0 "W2" 1 "L2" 1 "S2" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS5 1 520 550 -39 15 1 2 "RO4003C" 0 "W2" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS1 1 430 460 -26 37 0 0 "RO4003C" 0 "W1" 1 "L1" 1 "S1" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS13 1 320 430 -26 15 0 0 "RO4003C" 0 "W1" 1 "L0" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS18 1 980 670 -26 15 0 0 "RO4003C" 0 "W1" 1 "L0" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Eqn Eqn13 1 520 60 -31 16 0 0 "L0=1.750m" 1 "yes" 0>
  <Eqn Eqn16 1 790 60 -31 16 0 0 "W_Z0=1.1m" 1 "yes" 0>
  <MLIN MS14 1 190 430 -26 15 0 0 "RO4003C" 0 "W1" 1 "L0" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Pac P1 1 60 570 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 60 600 0 0 0 0>
  <MLIN MS22 1 110 430 -26 15 0 0 "RO4003C" 0 "W_Z0" 1 "25.4mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS23 1 250 430 -26 15 0 2 "RO4003C" 0 "W1" 0 "W1" 0 "Wstub" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN MS15 1 250 340 15 -26 0 1 "RO4003C" 0 "Wstub" 1 "Lstub" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS16 1 250 260 15 -12 1 1 "RO4003C" 0 "Wstub" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MLIN MS17 1 1100 670 -26 15 0 0 "RO4003C" 0 "W1" 1 "L0" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <Pac P2 1 1270 760 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 1270 790 0 0 0 0>
  <MLIN MS21 1 1190 670 -26 15 0 0 "RO4003C" 0 "W_Z0" 1 "25.4mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MTEE MS26 1 1040 670 -14 -55 0 0 "RO4003C" 0 "W1" 0 "W1" 0 "Wstub" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MLIN MS27 1 1040 770 -82 -30 0 1 "RO4003C" 0 "Wstub" 1 "Lstub" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS28 1 1040 860 -85 -26 1 3 "RO4003C" 0 "Wstub" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <.SP SP1 1 80 710 0 76 0 0 "lin" 1 "4.25GHz" 1 "5.75GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SUBST RO4003C 1 320 750 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0" 1 "1e-10" 1 "0" 1>
  <Eqn Eqn7 1 460 810 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <Eqn Eqn23 1 450 900 -28 15 0 0 "S21_dB_Classical=dB(S[4,3])" 1 "S11_dB_Classical=dB(S[3,3])" 1 "yes" 0>
  <Pac P4 1 540 320 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 540 350 0 0 0 0>
  <Pac P3 1 880 310 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 880 340 0 0 0 0>
  <Sub Classical_QW_Coupled_Line_BPF1 1 600 260 10 44 0 0 "Classical_QW_Coupled_Line_Filter_5GHz.sch" 0>
</Components>
<Wires>
  <760 610 850 610 "" 0 0 0 "">
  <610 550 700 550 "" 0 0 0 "">
  <460 490 550 490 "" 0 0 0 "">
  <910 670 950 670 "" 0 0 0 "">
  <350 430 400 430 "" 0 0 0 "">
  <60 430 80 430 "" 0 0 0 "">
  <60 430 60 540 "" 0 0 0 "">
  <140 430 160 430 "" 0 0 0 "">
  <280 430 290 430 "" 0 0 0 "">
  <250 370 250 400 "" 0 0 0 "">
  <250 290 250 310 "" 0 0 0 "">
  <1130 670 1160 670 "" 0 0 0 "">
  <1270 670 1270 730 "" 0 0 0 "">
  <1220 670 1270 670 "" 0 0 0 "">
  <1040 700 1040 740 "" 0 0 0 "">
  <1040 800 1040 830 "" 0 0 0 "">
  <540 260 540 290 "" 0 0 0 "">
  <540 260 590 260 "" 0 0 0 "">
  <850 260 880 260 "" 0 0 0 "">
  <880 260 880 280 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1050 410 429 295 3 #c0c0c0 1 00 1 4.2e+09 2e+08 5.8e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
	<"S21_dB" #ff0000 0 3 0 0 0>
	  <Mkr 4.80686e+09 10 -360 3 0 0>
	  <Mkr 5.20819e+09 300 -360 3 0 0>
	<"S21_dB_Classical" #ff00ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 80 900 12 #000000 0 "Coupled-line bandpass filter \n Chebyshev 4.75GHz...5.25GHz \n Impedance matching 50 Ohm">
</Paintings>
