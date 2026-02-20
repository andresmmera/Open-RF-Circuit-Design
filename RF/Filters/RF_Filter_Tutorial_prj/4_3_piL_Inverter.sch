<Qucs Schematic 25.2.0>
<Properties>
  <View=-456,-218,1479,826,0.980616,222,169>
  <Grid=10,10,1>
  <DataSet=4_3_piL_Inverter.dat>
  <DataDisplay=4_3_piL_Inverter.dpl>
  <OpenDisplay=0>
  <Script=piL_Inverter.m>
  <RunScript=0>
  <showFrame=1>
  <FrameText0=pi-L Type Impedance Inverter>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 20, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 190 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 9 #000000 0 "π -L Inverter">
  <Rectangle -20 -20 200 40 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <.SP SP1 1 60 570 0 56 0 0 "lin" 1 "100 MHz" 1 "800 MHz" 1 "71" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn InverterParameters1 1 80 120 -31 18 0 0 "f0=500e6" 1 "w=2*pi*f0" 1 "RS=50" 1 "RL=100" 1 "yes" 0>
  <Eqn Eqn1 1 250 590 -31 18 0 0 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <GND * 1 110 430 0 0 0 0>
  <GND * 1 430 430 0 0 0 0>
  <R R1 1 430 400 15 -26 0 1 "RL" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 330 430 0 0 0 0>
  <GND * 1 190 430 0 0 0 0>
  <Pac T1 1 110 400 -71 -23 0 1 "1" 1 "RS" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <L L1 1 260 350 -26 10 0 0 "Lpi" 1 "" 0>
  <L L2 1 190 400 -8 60 0 1 "Lpi_0" 1 "" 0>
  <L L3 1 330 400 -7 59 0 1 "Lpi_0" 1 "" 0>
  <Eqn Eqn2 1 270 120 -31 18 0 0 "Lpi=sqrt(RS*RL)/w" 1 "Lpi_0=-Lpi" 1 "yes" 0>
  <Port P1 5 950 40 -23 12 0 0 "1" 0 "analog" 0>
</Components>
<Wires>
  <110 350 190 350 "" 0 0 0 "">
  <110 350 110 370 "" 0 0 0 "">
  <290 350 330 350 "" 0 0 0 "">
  <430 350 430 370 "" 0 0 0 "">
  <330 350 430 350 "" 0 0 0 "">
  <330 350 330 370 "" 0 0 0 "">
  <190 350 230 350 "" 0 0 0 "">
  <190 350 190 370 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 550 542 398 222 3 #c0c0c0 1 00 0 1e+08 1e+08 8e+08 0 -50 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
  </Rect>
  <Smith 580 260 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"S[1,1]" #0000ff 1 3 0 0 0>
	  <Mkr 5e+08 140 -189 3 0 0>
  </Smith>
  <Tab 240 283 252 73 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"Lpi" #0000ff 0 3 1 0 0>
	<"Lpi_0" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 60 50 15 #000000 0 "π -L Inverter">
</Paintings>
