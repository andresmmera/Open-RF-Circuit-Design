<Qucs Schematic 25.2.0>
<Properties>
  <View=-788,-516,2718,1168,0.693863,322,232>
  <Grid=10,10,1>
  <DataSet=BAT62_1_Villard_Cell.dat>
  <DataDisplay=BAT62_1_Villard_Cell.dpl>
  <OpenDisplay=0>
  <Script=example.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=RF Power Detector (1 Villard Cell)>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 200 -16 SUB>
  <Rectangle -30 -20 220 50 #000000 1 1 #c0c0c0 1 0>
  <Text 20 -10 12 #000000 0 "BAT62 1 Villard Cell">
  <.PortSym 0 0 1 0 P2>
</Symbol>
<Components>
  <GND * 1 640 390 0 0 0 0>
  <R R_load1 1 640 350 16 -18 0 1 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <GND * 1 540 390 0 0 0 0>
  <C C3 1 540 360 17 -26 1 3 "1 nF" 1 "" 0 "neutral" 0>
  <C C1 1 260 300 -27 -52 0 2 "1 nF" 1 "" 0 "neutral" 0>
  <GND * 1 140 390 0 0 0 0>
  <.TR TR1 1 100 770 0 56 0 0 "lin" 1 "0" 1 "50us" 1 "5001" 1 "yes" 0 "0" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <INCLSCR INCLSCR1 1 500 770 -70 18 0 0 ".PARAM freq = 27" 1 "" 0 "" 0>
  <Pac P1 1 140 360 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 1 "freq" 1 "26.85" 0 "true" 0>
  <.SW SW1 1 260 770 0 56 0 0 "TR1" 1 "lin" 1 "freq" 1 "50 MHz" 1 "2 GHz" 1 "5" 1>
  <Sub BAT621 1 370 330 20 104 0 0 "BAT62.sch" 0>
  <GND * 1 500 390 0 0 0 0>
  <Port P2 1 470 880 -23 12 0 0 "1" 1 "analog" 0>
  <GND * 1 470 880 0 0 0 0>
</Components>
<Wires>
  <640 300 640 320 "" 0 0 0 "">
  <640 380 640 390 "" 0 0 0 "">
  <540 300 540 330 "" 0 0 0 "">
  <540 300 640 300 "Output" 620 250 36 "">
  <140 300 140 330 "" 0 0 0 "">
  <140 300 230 300 "Input" 110 250 50 "">
  <500 300 540 300 "" 0 0 0 "">
  <320 300 340 300 "" 0 0 0 "">
  <290 300 320 300 "" 0 0 0 "">
  <320 300 320 380 "" 0 0 0 "">
  <320 380 340 380 "" 0 0 0 "">
  <500 380 500 390 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 960 530 467 330 3 #c0c0c0 1 00 1 0 5e-06 5e-05 1 -0.75263 0.5 1.05736 1 -1 0.5 1 315 0 225 0 0 0 "" "" "">
	<"ngspice/tran.v(output)" #ff0000 0 3 0 0 0>
	  <Mkr 2.64e-05/5e+07 297 -425 3 0 0>
	  <Mkr 2.454e-05/2e+09 299 -117 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
