<Qucs Schematic 25.2.0>
<Properties>
  <View=-1221,-404,2411,1354,0.711907,900,228>
  <Grid=10,10,1>
  <DataSet=1_0_PMOSFET_CurveTracer_Ids_vs_Vgs.dat>
  <DataDisplay=1_0_PMOSFET_CurveTracer_Ids_vs_Vgs.dpl>
  <OpenDisplay=0>
  <Script=1_0_NMOSFET_CurveTracer.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=PMOSFET Curve Tracer>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 16, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 240 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 12 #000000 0 "PMOSFET Curve Tracer">
  <Rectangle -40 -30 270 60 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <GND * 1 590 480 0 0 0 0>
  <IProbe Ids 1 480 420 -26 16 1 2>
  <IProbe Igs 1 260 520 -26 16 0 0>
  <S4Q_V V1 1 590 450 18 -26 0 1 "3" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 390 560 0 0 0 0>
  <.DC DC1 1 340 750 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <S4Q_V V2 1 190 470 18 -26 1 3 "-1" 1 "" 0 "" 0 "" 0 "" 0>
  <Lib T2 1 390 520 8 -26 1 0 "PMOSFETs" 0 "IRF4905" 0>
  <Port P1 5 360 870 -23 12 0 0 "1" 0 "analog" 0>
  <.SW SW1 1 210 750 0 56 0 0 "DC1" 1 "lin" 1 "V2" 1 "-4.5" 1 "-3" 1 "20" 1>
  <.SW SW2 1 90 750 0 56 0 0 "SW1" 1 "lin" 1 "V1" 1 "0" 1 "12" 1 "24" 1>
</Components>
<Wires>
  <510 420 590 420 "" 0 0 0 "">
  <390 420 450 420 "" 0 0 0 "">
  <290 520 360 520 "" 0 0 0 "">
  <390 550 390 560 "" 0 0 0 "">
  <190 520 230 520 "" 0 0 0 "">
  <190 500 190 520 "" 0 0 0 "">
  <390 420 390 490 "" 0 0 0 "">
  <190 420 190 440 "" 0 0 0 "">
  <190 420 390 420 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 970 420 466 280 3 #c0c0c0 1 00 1 -4.5 0.2 -3.07895 1 -0.937758 5 11.8153 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.i(vids)" #0000ff 1 3 0 0 0>
	  <Mkr -3.78947/0.521739 283 -161 3 0 0>
  </Rect>
  <Rect 970 794 477 294 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/1_0_PMOSFET_CurveTracer_Ids_vs_Vds:sw2.i(vids)" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 1310 350 12 #ff0000 0 "OFF region">
  <Text 990 300 12 #ff0000 0 "ON region">
  <Rectangle 990 160 60 120 #ff0000 2 1 #c0c0c0 1 0>
  <Rectangle 1280 380 140 30 #ff0000 2 1 #c0c0c0 1 0>
  <Text 60 70 20 #000000 0 "PMOSFET Curve Tracer">
  <Text 60 120 12 #000000 0 "In a PMOSFET device, the channel draws current then VGS is below a certain threshold.\nIn this DUT, the IDS current starts flowing when VGS is below -3V, i.e., the gate voltage \nmust be lower than the source voltage.\n\nThe lower the gate voltage is wrt to the source voltage, the higher the current the device draws.\n\nIn the OFF region, VDS is maximum as "the switch is open", but there's no current flowing through the channel">
  <Rectangle 1310 750 140 30 #ff0000 2 1 #c0c0c0 1 0>
  <Text 1330 720 12 #ff0000 0 "OFF region">
  <Rectangle 980 520 60 120 #ff0000 2 1 #c0c0c0 1 0>
  <Text 1050 540 12 #ff0000 0 "ON region">
</Paintings>
