<Qucs Schematic 25.2.0>
<Properties>
  <View=-398,-208,1836,1095,0.70197,0,60>
  <Grid=10,10,1>
  <DataSet=1_1_DC_Switch_PMOSFET.dat>
  <DataDisplay=1_1_DC_Switch_PMOSFET.dpl>
  <OpenDisplay=0>
  <Script=DC_Switch_PMOSFET.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=PMOSFET switch>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 15, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 230 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 40 -10 12 #000000 0 "PMOSFET switch">
  <Rectangle -40 -30 250 60 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Lib T1 1 540 450 8 -26 1 0 "PMOSFETs" 0 "IRF4905" 0>
  <GND * 1 340 360 0 0 0 0>
  <GND * 1 710 590 0 0 0 0>
  <GND * 1 250 540 0 0 0 0>
  <IProbe Iload 1 640 490 -26 16 0 0>
  <.DC DC1 1 70 760 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpicePar SpicePar1 1 430 770 -28 18 0 0 "Vcontrol=1" 1>
  <Vdc V1 1 340 330 18 -26 0 1 "12V" 1>
  <Vdc Vcontrol 1 250 510 -82 -13 0 1 "-3" 0>
  <.SW SW1 1 220 760 0 56 0 0 "DC1" 1 "lin" 1 "Vcontrol" 1 "0" 1 "10" 1 "50" 1>
  <R R1 1 710 560 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 1 480 400 -66 -30 0 1 "10k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 430 450 -14 17 0 0 "12k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Port P1 5 70 960 -23 12 0 0 "1" 0 "analog" 0>
  <NutmegEq MinusVGS1 1 430 860 -30 18 0 0 "ALL" 1 "mVGS=v(s) - v(g)" 1 "VDS=v(d) - v(s)" 1>
</Components>
<Wires>
  <710 490 710 530 "" 0 0 0 "">
  <670 490 710 490 "VLoad" 730 460 32 "">
  <480 450 510 450 "G" 490 460 17 "">
  <480 360 480 370 "" 0 0 0 "">
  <480 360 540 360 "" 0 0 0 "">
  <460 450 480 450 "" 0 0 0 "">
  <480 430 480 450 "" 0 0 0 "">
  <540 480 540 490 "" 0 0 0 "">
  <540 490 610 490 "D" 600 460 33 "">
  <540 360 540 420 "S" 560 380 38 "">
  <340 270 540 270 "" 0 0 0 "">
  <340 270 340 300 "" 0 0 0 "">
  <540 270 540 360 "" 0 0 0 "">
  <250 450 400 450 "" 0 0 0 "">
  <250 450 250 480 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1079 812 355 205 3 #c0c0c0 1 00 0 0 1 10 0 0 2 14 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.v(d)" #0000ff 0 3 0 0 0>
	<"ngspice/sw1.v(g)" #ff0000 0 3 0 0 0>
	<"ngspice/sw1.v(s)" #ff00ff 0 3 0 0 0>
  </Rect>
  <Rect 1079 542 355 205 3 #c0c0c0 1 00 0 0 1 10 0 0 0.2 1.4 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.i(viload)" #0000ff 0 3 0 0 0>
	<"ngspice/sw1.vds" #ff0000 1 3 0 0 1>
	  <Mkr 1.42857 171 -168 3 0 0>
	  <Mkr 6.12246 177 -77 3 0 0>
  </Rect>
  <Rect 1079 252 355 205 3 #c0c0c0 1 00 0 0 1 10 0 0 0.5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.mvgs" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 60 60 20 #000000 0 "PMOSFET Switch (High-side switch)">
  <Text 940 290 12 #ff0000 0 "ON / OFF Threshold">
  <Rectangle 400 350 110 170 #000000 1 2 #c0c0c0 1 0>
  <Text 370 550 12 #000000 0 "Modify the voltage divider\nfor adjusting the turn-off threshold">
  <Rectangle 160 430 140 150 #000000 1 2 #c0c0c0 1 0>
  <Text 170 590 12 #000000 0 "Control voltage">
  <Text 160 630 12 #000000 0 "In practice this will be the GPO\nof a microcontroller (V = {0, 3.3V})">
  <Text 80 130 12 #000000 0 "This schematic studies the behaviour of a PMOSFET as a switch">
  <Text 80 160 12 #000000 0 "PMOSFET is on if  -VGS < -Vth">
  <Line 1200 40 0 770 #000000 1 1>
  <Arrow 1100 300 90 0 20 8 #000000 1 1 0>
  <Text 630 290 12 #000000 0 "VDS ~ 0 V at saturation:\nNo heat dissipation">
  <Rectangle 620 280 190 70 #000000 1 1 #c0c0c0 1 0>
  <Arrow 660 360 -60 60 20 8 #000000 1 1 0>
  <Text 740 640 12 #000000 0 "Load">
  <Rectangle 680 530 150 100 #000000 1 2 #c0c0c0 1 0>
</Paintings>
