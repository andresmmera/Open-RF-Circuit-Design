<Qucs Schematic 24.2.0>
<Properties>
  <View=216,65,1405,724,1.30851,0,0>
  <Grid=10,10,1>
  <DataSet=Classical_QW_Coupled_Line_Filter_5GHz.dat>
  <DataDisplay=Classical_QW_Coupled_Line_Filter_5GHz.dpl>
  <OpenDisplay=0>
  <Script=Classical_QW_Coupled_Line_Filter_5GHz.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <Line -10 0 50 0 #000000 1 1>
  <Line 200 0 50 0 #000000 1 1>
  <.PortSym 250 0 2 0>
  <Line 130 10 40 0 #ffaa00 5 1>
  <Line 150 20 40 0 #ffaa00 5 1>
  <Rectangle 40 -40 160 80 #000000 5 1 #c0c0c0 1 0>
  <Line 50 -20 40 0 #ffaa00 5 1>
  <Line 100 0 40 0 #ffaa00 5 1>
  <Line 70 -10 40 0 #ffaa00 5 1>
  <.PortSym -10 0 1 0>
  <.ID 10 44 Classical_QW_Coupled_Line_BPF>
</Symbol>
<Components>
  <Port P1 1 390 360 -23 12 0 0 "1" 1 "analog" 0 "v" 0 "" 0>
  <Eqn Eqn6 1 870 210 -31 16 0 0 "W2_=1.08m" 1 "yes" 0>
  <Eqn Eqn5 1 770 210 -31 16 0 0 "S2_=510u" 1 "yes" 0>
  <Eqn Eqn4 1 660 210 -31 16 0 0 "L2_=8.78m" 1 "yes" 0>
  <Eqn Eqn3 1 870 120 -31 16 0 0 "W1_=760u" 1 "yes" 0>
  <Eqn Eqn2 1 770 120 -31 16 0 0 "S1_=103.000u" 1 "yes" 0>
  <Eqn Eqn1 1 660 120 -31 16 0 0 "L1_=8.93m" 1 "yes" 0>
  <MCOUPLED MS14 1 1060 570 -26 37 0 0 "RO4003C" 0 "W1_" 1 "L1_" 1 "S1_" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS13 1 670 360 -28 -53 1 0 "RO4003C" 0 "W1_" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS12 1 550 420 -39 14 1 2 "RO4003C" 0 "W1_" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS11 1 610 390 -26 37 0 0 "RO4003C" 0 "W1_" 1 "L1_" 1 "S1_" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS10 1 1150 600 -26 15 0 0 "RO4003C" 0 "W_Z0" 1 "25.4 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MLIN MS9 1 470 360 -26 15 0 0 "RO4003C" 0 "W_Z0" 1 "25.4 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS8 1 700 480 -39 15 1 2 "RO4003C" 0 "W2_" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS7 1 760 450 -26 37 0 0 "RO4003C" 0 "W2_" 1 "L2_" 1 "S2_" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS6 1 850 540 -53 9 1 2 "RO4003C" 0 "W2_" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MCOUPLED MS5 1 910 510 -26 37 0 0 "RO4003C" 0 "W2_" 1 "L2_" 1 "S2_" 1 "Kirschning" 0 "Kirschning" 0 "26.85" 0>
  <MOPEN MS4 1 1000 600 -41 10 1 2 "RO4003C" 0 "W1_" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS3 1 1120 540 -22 -53 1 0 "RO4003C" 0 "W1_" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS2 1 970 480 -29 -51 1 0 "RO4003C" 0 "W2_" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <MOPEN MS1 1 820 420 -25 -49 1 0 "RO4003C" 0 "W2_" 1 "Hammerstad" 0 "Kirschning" 0 "Kirschning" 0>
  <Port P2 1 1200 600 4 -48 0 2 "2" 1 "analog" 0 "v" 0 "" 0>
</Components>
<Wires>
  <390 360 440 360 "" 0 0 0 "">
  <940 540 1030 540 "" 0 0 0 "">
  <1090 600 1120 600 "" 0 0 0 "">
  <500 360 580 360 "" 0 0 0 "">
  <640 420 730 420 "" 0 0 0 "">
  <790 480 880 480 "" 0 0 0 "">
  <1180 600 1200 600 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
