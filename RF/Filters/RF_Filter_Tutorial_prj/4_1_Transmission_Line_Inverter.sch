<Qucs Schematic 25.2.0>
<Properties>
  <View=-452,-279,1501,861,0.971408,67,208>
  <Grid=10,10,1>
  <DataSet=4_1_Transmission_Line_Inverter.dat>
  <DataDisplay=4_1_Transmission_Line_Inverter.dpl>
  <OpenDisplay=0>
  <Script=Transmission_Line_Inverter.m>
  <RunScript=0>
  <showFrame=1>
  <FrameText0=Transmission Line Impedance Inverter>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 20, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 190 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 10 -10 9 #000000 0 "Transmission Line Inverter">
  <Rectangle -20 -20 200 40 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Eqn DesignEquations 1 260 140 -31 18 0 0 "c0=299792458" 1 "lambda4=c0/(4*f0)" 1 "Zinv=sqrt(RS*RL)" 1 "yes" 0>
  <.SP SP1 1 70 580 0 56 0 0 "lin" 1 "100 MHz" 1 "800 MHz" 1 "71" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 260 600 -31 18 0 0 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <GND * 1 140 470 0 0 0 0>
  <GND * 1 340 470 0 0 0 0>
  <R R2 1 340 440 15 -26 0 1 "RL" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <TLIN TLIN1 1 240 390 -32 -77 0 0 "Zinv" 1 "lambda4" 1 "0 dB" 0 "26.85" 0>
  <Pac T2 1 140 440 -71 -23 0 1 "1" 1 "RS" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Eqn InverterParameters 1 90 130 -31 18 0 0 "f0=500e6" 1 "w=2*pi*f0" 1 "RS=50" 1 "RL=100" 1 "yes" 0>
  <Port P1 5 960 50 -23 12 0 0 "1" 0 "analog" 0>
</Components>
<Wires>
  <140 390 210 390 "" 0 0 0 "">
  <140 390 140 410 "" 0 0 0 "">
  <270 390 340 390 "" 0 0 0 "">
  <340 390 340 410 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 540 524 278 184 3 #c0c0c0 1 00 0 1e+08 1e+08 8e+08 0 -50 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
  </Rect>
  <Smith 580 270 200 200 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"S[1,1]" #0000ff 1 3 0 0 0>
	  <Mkr 5e+08 60 -239 3 0 0>
  </Smith>
  <Tab 220 304 257 54 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"Zinv" #0000ff 0 3 0 0 0>
	<"lambda4" #0000ff 0 3 0 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 70 60 15 #000000 0 "Transmission Line Inverter">
</Paintings>
