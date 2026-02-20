<Qucs Schematic 25.2.0>
<Properties>
  <View=-464,-129,1507,884,0.962372,254,70>
  <Grid=10,10,1>
  <DataSet=4_2_piC_Inverter.dat>
  <DataDisplay=4_2_piC_Inverter.dpl>
  <OpenDisplay=0>
  <Script=piC_Inverter.m>
  <RunScript=0>
  <showFrame=1>
  <FrameText0=Capacitive pi-type inverter>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 20, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 190 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 9 #000000 0 "π -C Inverter">
  <Rectangle -20 -20 200 40 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <.SP SP1 1 70 560 0 56 0 0 "lin" 1 "100 MHz" 1 "800 MHz" 1 "71" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn InverterParameters 1 90 140 -31 18 0 0 "f0=500e6" 1 "w=2*pi*f0" 1 "RS=50" 1 "RL=100" 1 "yes" 0>
  <Eqn Eqn1 1 260 610 -31 18 0 0 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <Eqn Eqn2 1 280 140 -31 18 0 0 "Cpi=1/(w*sqrt(RS*RL))" 1 "Cpi_0=-Cpi" 1 "yes" 0>
  <GND * 1 120 450 0 0 0 0>
  <GND * 1 440 450 0 0 0 0>
  <R R1 1 440 420 15 -26 0 1 "RL" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 340 450 0 0 0 0>
  <GND * 1 200 450 0 0 0 0>
  <C C1 1 270 370 -26 17 0 0 "Cpi" 1 "" 0 "neutral" 0>
  <C C2 1 200 420 -14 62 0 1 "Cpi_0" 1 "" 0 "neutral" 0>
  <C C3 1 340 420 -13 63 0 1 "Cpi_0" 1 "" 0 "neutral" 0>
  <Pac T1 1 120 420 -71 -23 0 1 "1" 1 "RS" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Port P1 5 960 60 -23 12 0 0 "1" 0 "analog" 0>
</Components>
<Wires>
  <120 370 200 370 "" 0 0 0 "">
  <120 370 120 390 "" 0 0 0 "">
  <300 370 340 370 "" 0 0 0 "">
  <440 370 440 390 "" 0 0 0 "">
  <340 370 440 370 "" 0 0 0 "">
  <340 370 340 390 "" 0 0 0 "">
  <200 370 240 370 "" 0 0 0 "">
  <200 370 200 390 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 560 552 380 212 3 #c0c0c0 1 00 0 1e+08 1e+08 8e+08 0 -50 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
  </Rect>
  <Smith 590 280 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"S[1,1]" #0000ff 1 3 0 0 0>
	  <Mkr 5e+08 60 -239 3 0 0>
  </Smith>
  <Tab 250 292 252 62 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"Cpi" #0000ff 0 3 1 0 0>
	<"Cpi_0" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 70 70 15 #000000 0 "π -C Inverter">
</Paintings>
