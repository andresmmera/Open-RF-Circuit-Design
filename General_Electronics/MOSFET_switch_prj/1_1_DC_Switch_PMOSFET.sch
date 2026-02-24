<Qucs Schematic 25.2.0>
<Properties>
  <View=-813,-190,2195,1284,0.70197,277,81>
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
  <Lib T1 1 550 360 8 -26 1 0 "PMOSFETs" 0 "IRF4905" 0>
  <GND * 1 350 270 0 0 0 0>
  <GND * 1 720 500 0 0 0 0>
  <GND * 1 260 450 0 0 0 0>
  <IProbe Iload 1 650 400 -26 16 0 0>
  <.DC DC1 1 70 660 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpicePar SpicePar1 1 110 750 -28 18 0 0 "Vcontrol=1" 1>
  <Vdc V1 1 350 240 18 -26 0 1 "12V" 1>
  <Vdc Vcontrol 1 260 420 -82 -13 0 1 "-3" 0>
  <R R1 1 720 470 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Port P1 5 70 960 -23 12 0 0 "1" 0 "analog" 0>
  <NutmegEq MinusVGS1 1 300 880 -30 18 0 0 "ALL" 1 "mVGS=v(s) - v(g)" 1 "VDS=v(d) - v(s)" 1>
  <NutmegEq Rds1 1 110 850 -30 18 0 0 "ALL" 1 "RDS=(v(s)-v(d))/i(viload)" 1>
  <.SW SW1 1 270 660 0 56 0 0 "DC1" 1 "lin" 1 "Vcontrol" 1 "0" 1 "5" 1 "50" 1>
  <R R3 1 490 310 -66 -30 0 1 "5.5k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 440 360 -14 17 0 0 "10k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Ig 1 360 360 -26 16 0 0>
</Components>
<Wires>
  <720 400 720 440 "" 0 0 0 "">
  <680 400 720 400 "VLoad" 740 370 32 "">
  <490 360 520 360 "G" 500 370 17 "">
  <490 270 490 280 "" 0 0 0 "">
  <490 270 550 270 "" 0 0 0 "">
  <470 360 490 360 "" 0 0 0 "">
  <490 340 490 360 "" 0 0 0 "">
  <550 390 550 400 "" 0 0 0 "">
  <550 400 620 400 "D" 610 370 33 "">
  <550 270 550 330 "S" 570 290 38 "">
  <350 180 550 180 "" 0 0 0 "">
  <350 180 350 210 "" 0 0 0 "">
  <550 180 550 270 "" 0 0 0 "">
  <260 360 330 360 "" 0 0 0 "">
  <260 360 260 390 "" 0 0 0 "">
  <390 360 410 360 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1079 812 355 205 3 #c0c0c0 1 00 0 0 0.5 5 0 0 2 14 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.v(d)" #0000ff 0 3 0 0 0>
	<"ngspice/sw1.v(g)" #ff0000 0 3 0 0 0>
	<"ngspice/sw1.v(s)" #ff00ff 0 3 0 0 0>
  </Rect>
  <Rect 1079 542 355 205 3 #c0c0c0 1 00 0 0 0.5 5 0 0 0.2 1.4 1 -13.196 5 1.15679 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.i(viload)" #0000ff 0 3 0 0 0>
	<"ngspice/sw1.vds" #ff0000 1 3 0 0 1>
	  <Mkr 1.42857 171 -168 3 0 0>
	  <Mkr 4.89797 177 -77 3 0 0>
  </Rect>
  <Rect 1079 252 355 205 3 #c0c0c0 1 00 0 0 0.5 5 0 0 0.5 5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.mvgs" #0000ff 0 3 0 0 0>
	<"ngspice/sw1.i(vig)" #ff0000 1 3 0 0 1>
	  <Mkr 0.612246 173 -68 3 0 0>
  </Rect>
  <Rect 520 923 367 243 3 #c0c0c0 1 00 0 0 0.5 5 0 0 0.05 0.2 0 1e+06 500000 3e+06 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.rds" #0000ff 1 3 0 0 0>
	  <Mkr 0.714287 150 -225 3 0 0>
	<"ngspice/sw1.rds" #ff0000 1 3 0 0 1>
	  <Mkr 3.16327 181 -95 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 60 60 20 #000000 0 "PMOSFET Switch (High-side switch)">
  <Text 940 290 12 #ff0000 0 "ON / OFF Threshold">
  <Rectangle 410 260 110 170 #000000 1 2 #c0c0c0 1 0>
  <Text 380 460 12 #000000 0 "Modify the voltage divider\nfor adjusting the turn-off threshold">
  <Rectangle 170 340 140 150 #000000 1 2 #c0c0c0 1 0>
  <Text 180 500 12 #000000 0 "Control voltage">
  <Text 170 540 12 #000000 0 "In practice this will be the GPO\nof a microcontroller (V = {0, 3.3V})">
  <Text 80 130 12 #000000 0 "This schematic studies the behaviour of a PMOSFET as a switch">
  <Text 80 160 12 #000000 0 "PMOSFET is on if  -VGS < -Vth">
  <Line 1190 50 0 770 #000000 1 1>
  <Arrow 1100 300 90 0 20 8 #000000 1 1 0>
  <Text 640 200 12 #000000 0 "VDS ~ 0 V at saturation:\nNo heat dissipation">
  <Rectangle 630 190 190 70 #000000 1 1 #c0c0c0 1 0>
  <Arrow 670 270 -60 60 20 8 #000000 1 1 0>
  <Text 750 550 12 #000000 0 "Load">
  <Rectangle 690 440 150 100 #000000 1 2 #c0c0c0 1 0>
  <Text 620 640 12 #000000 0 "ON / OFF Resistance">
  <Text 770 750 12 #000000 0 "OFF">
  <Text 560 830 12 #000000 0 "ON">
  <Line 630 920 0 -240 #000000 1 1>
  <Text 1150 50 12 #000000 0 "ON">
  <Text 1200 50 12 #000000 0 "OFF">
</Paintings>
