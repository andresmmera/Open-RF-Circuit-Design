<Qucs Schematic 25.2.0>
<Properties>
  <View=-158,20,1639,1000,0.872449,0,0>
  <Grid=10,10,1>
  <DataSet=2_0_NMOSFET_CurveTracer_Ids_vs_Vds.dat>
  <DataDisplay=2_0_NMOSFET_CurveTracer_Ids_vs_Vds.dpl>
  <OpenDisplay=0>
  <Script=1_0_NMOSFET_CurveTracer.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=NMOSFET Curve Tracer>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 16, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 240 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 12 #000000 0 "NMOSFET Curve Tracer">
  <Rectangle -40 -30 270 60 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <GND * 1 550 410 0 0 0 0>
  <IProbe Ids 1 440 350 -26 16 1 2>
  <IProbe Igs 1 220 410 -26 16 0 0>
  <S4Q_V V1 1 550 380 18 -26 0 1 "3" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 350 450 0 0 0 0>
  <.DC DC1 1 340 750 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 150 510 0 0 0 0>
  <S4Q_V V2 1 150 480 18 -26 0 1 "-1" 1 "" 0 "" 0 "" 0 "" 0>
  <Lib T1 1 350 410 8 -26 0 0 "NMOSFETs" 0 "IRF510" 0>
  <.SW SW2 1 90 750 0 56 0 0 "DC1" 1 "lin" 1 "V1" 1 "0" 1 "12" 1 "24" 1>
  <.SW SW1 1 210 750 0 56 0 0 "SW2" 1 "lin" 1 "V2" 1 "2" 1 "6" 1 "26" 1>
  <Port P1 5 400 870 -23 12 0 0 "1" 0 "analog" 0>
</Components>
<Wires>
  <470 350 550 350 "" 0 0 0 "">
  <350 350 350 380 "" 0 0 0 "">
  <350 350 410 350 "" 0 0 0 "">
  <250 410 320 410 "" 0 0 0 "">
  <350 440 350 450 "" 0 0 0 "">
  <150 410 150 450 "" 0 0 0 "">
  <150 410 190 410 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 930 450 466 280 3 #c0c0c0 1 00 1 -4.5 0.2 -3.07895 1 -0.937758 2 10.3153 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/2_0_NMOSFET_CurveTracer_Ids_vs_Vgs:sw1.i(vids)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 930 824 477 294 3 #c0c0c0 1 00 1 0 2 12 1 -0.937758 2 10.3153 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw2.i(vids)" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 70 60 20 #000000 0 "NMOSFET Curve Tracer">
  <Text 70 160 12 #000000 0 "In a NMOSFET device, the channel draws current then VGS exceeds certain threshold.\nThis means that the gate voltage must be higher than the source voltage to draw current.\n\nIn the OFF region, VDS is maximum as "the switch is open", but there's no current flowing through the channel">
  <Text 960 380 12 #ff0000 0 "OFF region">
  <Text 1220 240 12 #ff0000 0 "ON region">
  <Rectangle 1310 190 60 120 #ff0000 2 1 #c0c0c0 1 0>
  <Rectangle 950 410 140 30 #ff0000 2 1 #c0c0c0 1 0>
  <Rectangle 1270 780 140 30 #ff0000 2 1 #c0c0c0 1 0>
  <Text 1290 750 12 #ff0000 0 "OFF region">
  <Rectangle 970 550 60 120 #ff0000 2 1 #c0c0c0 1 0>
  <Text 1040 570 12 #ff0000 0 "ON region">
</Paintings>
