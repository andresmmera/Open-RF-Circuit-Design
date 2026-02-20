<Qucs Schematic 25.2.0>
<Properties>
  <View=-2201,-749,2817,1987,0.980616,1988,693>
  <Grid=10,10,1>
  <DataSet=4_4_teeC_Inverter.dat>
  <DataDisplay=4_4_teeC_Inverter.dpl>
  <OpenDisplay=0>
  <Script=teeC_Inverter.m>
  <RunScript=0>
  <showFrame=1>
  <FrameText0=Capacitive Tee-type Inverter>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 21, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 190 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 9 #000000 0 "Tee-C Inverter">
  <Rectangle -20 -20 200 40 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <.SP SP1 1 50 570 0 56 0 0 "lin" 1 "100 MHz" 1 "800 MHz" 1 "71" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn InverterParameters1 1 70 120 -31 18 0 0 "f0=500e6" 1 "w=2*pi*f0" 1 "RS=50" 1 "RL=100" 1 "yes" 0>
  <Eqn Eqn1 1 240 590 -31 18 0 0 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <GND * 1 100 430 0 0 0 0>
  <GND * 1 420 430 0 0 0 0>
  <R R1 1 420 400 15 -26 0 1 "RL" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 260 440 0 0 0 0>
  <Pac T1 1 100 400 -71 -23 0 1 "1" 1 "RS" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <C C4 1 190 350 -26 17 0 0 "Ctee_0" 1 "" 0 "neutral" 0>
  <C C5 1 330 350 -26 17 0 0 "Ctee_0" 1 "" 0 "neutral" 0>
  <C C3 1 260 410 -13 63 0 1 "Ctee" 1 "" 0 "neutral" 0>
  <Eqn Eqn2 1 260 120 -31 18 0 0 "Ctee=1/(w*sqrt(RS*RL))" 1 "Ctee_0=-Ctee" 1 "yes" 0>
  <Port P1 5 940 40 -23 12 0 0 "1" 0 "analog" 0>
</Components>
<Wires>
  <100 350 100 370 "" 0 0 0 "">
  <420 350 420 370 "" 0 0 0 "">
  <100 350 160 350 "" 0 0 0 "">
  <360 350 420 350 "" 0 0 0 "">
  <260 350 260 380 "" 0 0 0 "">
  <260 350 300 350 "" 0 0 0 "">
  <220 350 260 350 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 550 583 378 233 3 #c0c0c0 1 00 0 1e+08 1e+08 8e+08 0 -50 5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 0 3 0 0 0>
  </Rect>
  <Smith 570 305 245 245 3 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"S[1,1]" #0000ff 1 3 0 0 0>
	  <Mkr 5e+08 210 -214 3 0 0>
  </Smith>
  <Tab 190 273 242 53 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"Ctee" #0000ff 0 3 1 0 0>
	<"Ctee_0" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 50 50 15 #000000 0 "Tee-C Inverter">
</Paintings>
