<Qucs Schematic 25.2.0>
<Properties>
  <View=-366,-183,1794,1092,0.725806,0,70>
  <Grid=10,10,1>
  <DataSet=2_1_DC_Switch_NMOSFET.dat>
  <DataDisplay=2_1_DC_Switch_NMOSFET.dpl>
  <OpenDisplay=0>
  <Script=DC_Switch_PMOSFET.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=NMOSFET switch>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 15, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 200 -26 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 12 #000000 0 "NMOSFET switch">
  <Rectangle -40 -30 220 60 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <GND * 1 340 360 0 0 0 0>
  <GND * 1 250 540 0 0 0 0>
  <.DC DC1 1 70 760 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpicePar SpicePar1 1 430 770 -28 18 0 0 "Vcontrol=1" 1>
  <Vdc V1 1 340 330 18 -26 0 1 "12V" 1>
  <Vdc Vcontrol 1 250 510 -82 -13 0 1 "-3" 0>
  <.SW SW1 1 260 760 0 56 0 0 "DC1" 1 "lin" 1 "Vcontrol" 1 "0" 1 "10" 1 "50" 1>
  <R R1 1 540 330 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Port P1 5 70 960 -23 12 0 0 "1" 0 "analog" 0>
  <R R2 1 430 450 -14 17 0 0 "10k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Iload 1 470 270 -26 16 0 0>
  <GND * 1 540 500 0 0 0 0>
  <NutmegEq MinusVGS1 1 430 860 -30 18 0 0 "ALL" 1 "VGS=v(g)" 1 "VDS=v(d)" 1>
  <Lib T1 1 540 450 8 -26 0 0 "NMOSFETs" 0 "IRF510" 0>
  <IProbe Ig 1 350 450 -26 16 0 0>
  <NutmegEq Rds1 1 100 840 -30 18 0 0 "ALL" 1 "RDS=v(d)/i(viload)" 1>
</Components>
<Wires>
  <460 450 510 450 "G" 490 460 37 "">
  <340 270 440 270 "" 0 0 0 "">
  <340 270 340 300 "" 0 0 0 "">
  <540 270 540 300 "" 0 0 0 "">
  <250 450 320 450 "" 0 0 0 "">
  <250 450 250 480 "" 0 0 0 "">
  <540 360 540 420 "D" 560 380 38 "">
  <500 270 540 270 "" 0 0 0 "">
  <540 480 540 500 "" 0 0 0 "">
  <380 450 400 450 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1079 812 355 205 3 #c0c0c0 1 00 0 0 1 10 0 0 2 14 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.v(d)" #0000ff 0 3 0 0 0>
	  <Mkr 6.12246 227 -80 3 0 0>
	<"ngspice/sw1.v(g)" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 1079 542 355 205 3 #c0c0c0 1 00 0 0 1 10 0 0 0.2 1.4 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.i(viload)" #0000ff 0 3 0 0 0>
	<"ngspice/sw1.v(vds)" #ff0000 0 3 0 0 1>
	  <Mkr 2.04082 -8 -128 3 0 0>
	  <Mkr 7.34695 191 -108 3 0 0>
  </Rect>
  <Rect 1079 252 355 205 3 #c0c0c0 1 00 0 0 1 10 0 0 0.5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.v(vgs)" #0000ff 0 3 0 0 0>
	<"ngspice/sw1.i(vig)" #ff0000 1 3 0 0 1>
  </Rect>
  <Rect 580 923 367 243 3 #c0c0c0 1 00 0 0 1 10 0 3e+06 500000 5e+06 0 0.2 0.1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.rds" #0000ff 1 3 0 0 0>
	  <Mkr 0.816328 10 -205 3 0 0>
	<"ngspice/sw1.rds" #ff0000 1 3 0 0 1>
	  <Mkr 7.34695 200 -63 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 60 60 20 #000000 0 "NMOSFET Switch (Low-side switch)">
  <Text 960 300 12 #ff0000 0 "ON / OFF Threshold">
  <Rectangle 160 430 140 150 #000000 1 2 #c0c0c0 1 0>
  <Text 170 590 12 #000000 0 "Control voltage">
  <Text 80 130 12 #000000 0 "This schematic studies the behaviour of a NMOSFET as a switch">
  <Text 80 160 12 #000000 0 "NMOSFET is on if  VGS > Vth">
  <Line 1250 40 0 770 #000000 1 1>
  <Arrow 1120 310 90 0 20 8 #000000 1 1 0>
  <Text 710 420 12 #000000 0 "VDS ~ 0 V at saturation:\nNo heat dissipation">
  <Rectangle 700 410 190 70 #000000 1 1 #c0c0c0 1 0>
  <Arrow 670 450 -80 0 20 8 #000000 1 1 0>
  <Rectangle 520 290 140 70 #000000 1 2 #c0c0c0 1 0>
  <Text 560 260 12 #000000 0 "Load">
  <Text 1320 100 12 #ff0000 0 "ON">
  <Text 1140 90 12 #ff0000 0 "OFF">
  <Text 680 640 12 #000000 0 "ON / OFF Resistance">
  <Text 630 820 12 #000000 0 "OFF">
  <Text 850 790 12 #000000 0 "ON">
  <Line 760 920 0 -240 #000000 1 1>
</Paintings>
