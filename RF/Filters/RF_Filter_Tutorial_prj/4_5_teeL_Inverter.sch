<Qucs Schematic 25.2.0>
<Properties>
  <View=-465,-279,1488,935,0.971408,138,206>
  <Grid=10,10,1>
  <DataSet=4_5_teeL_Inverter.dat>
  <DataDisplay=4_5_teeL_Inverter.dpl>
  <OpenDisplay=0>
  <Script=teeL_Inverter.m>
  <RunScript=0>
  <showFrame=1>
  <FrameText0=Inductive Tee-type Inverter>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 21, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 180 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 10 -10 9 #000000 0 "Tee-C Inverter">
  <Rectangle -30 -20 200 40 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <.SP SP1 1 60 580 0 56 0 0 "lin" 1 "100 MHz" 1 "800 MHz" 1 "71" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn InverterParameters1 1 80 130 -31 18 0 0 "f0=500e6" 1 "w=2*pi*f0" 1 "RS=50" 1 "RL=100" 1 "yes" 0>
  <Eqn Eqn1 1 250 600 -31 18 0 0 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <GND * 1 110 440 0 0 0 0>
  <GND * 1 430 440 0 0 0 0>
  <R R1 1 430 410 15 -26 0 1 "RL" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 270 450 0 0 0 0>
  <Pac T1 1 110 410 -71 -23 0 1 "1" 1 "RS" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Eqn Eqn2 1 260 130 -31 18 0 0 "Ltee=sqrt(RS*RL)/w" 1 "Ltee_0=-Ltee" 1 "yes" 0>
  <L L1 1 200 360 -26 10 0 0 "Ltee_0" 1 "" 0>
  <L L2 1 340 360 -26 10 0 0 "Ltee_0" 1 "" 0>
  <L L3 1 270 420 -14 60 0 1 "Ltee" 1 "" 0>
  <Port P1 5 950 50 -23 12 0 0 "1" 0 "analog" 0>
</Components>
<Wires>
  <110 360 110 380 "" 0 0 0 "">
  <430 360 430 380 "" 0 0 0 "">
  <110 360 170 360 "" 0 0 0 "">
  <370 360 430 360 "" 0 0 0 "">
  <270 360 270 390 "" 0 0 0 "">
  <270 360 310 360 "" 0 0 0 "">
  <230 360 270 360 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 550 597 385 227 3 #c0c0c0 1 00 0 1e+08 1e+08 8e+08 0 -50 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
  </Rect>
  <Smith 580 324 254 254 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"S[1,1]" #0000ff 1 3 0 0 0>
	  <Mkr 5e+08 210 -223 3 0 0>
  </Smith>
  <Tab 230 305 272 85 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"Ltee" #0000ff 0 3 1 0 0>
	<"Ltee_0" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 50 40 15 #000000 0 "Tee-L Inverter">
</Paintings>
