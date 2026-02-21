<Qucs Schematic 25.2.0>
<Properties>
  <View=-315,-416,1930,1097,0.698575,0,202>
  <Grid=10,10,1>
  <DataSet=HPF_500_MHz.dat>
  <DataDisplay=HPF_500_MHz.dpl>
  <OpenDisplay=0>
  <Script=HPF_500_MHz.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Lumped HPF 500 MHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Aug 2024>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Lib C1 1 250 410 -10 13 0 0 "/home/andresmmera/.qucs/Prueba_prj/GRM03" 0 "6 pF" 0>
  <Lib C2 1 250 330 -10 13 0 0 "/home/andresmmera/.qucs/Prueba_prj/GRM03" 0 "0.4 pF" 0>
  <Lib C3 1 390 410 -10 13 0 0 "/home/andresmmera/.qucs/Prueba_prj/GRM03" 0 "3 pF" 0>
  <Lib C4 1 390 330 -10 13 0 0 "/home/andresmmera/.qucs/Prueba_prj/GRM03" 0 "0.4 pF" 0>
  <Lib C5 1 530 410 -10 13 0 0 "/home/andresmmera/.qucs/Prueba_prj/GRM03" 0 "6 pF" 0>
  <Lib C6 1 530 330 -10 13 0 0 "/home/andresmmera/.qucs/Prueba_prj/GRM03" 0 "0.4 pF" 0>
  <Lib L1 1 320 500 13 -10 0 1 "/home/andresmmera/.qucs/Prueba_prj/LQW18AN" 0 "12 nH" 0>
  <Lib L2 1 460 500 13 -10 0 1 "/home/andresmmera/.qucs/Prueba_prj/LQW18AN" 0 "12 nH" 0>
  <GND * 1 460 530 0 0 0 0>
  <GND * 1 320 530 0 0 0 0>
  <Pac P1 1 140 510 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 140 540 0 0 0 0>
  <Pac P2 1 640 500 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 640 530 0 0 0 0>
  <Eqn Eqn1 1 470 660 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "dBS11=dB(S[1,1])" 1 "yes" 0>
  <.SP SP1 1 250 650 0 56 0 0 "lin" 1 "100MHz" 1 "2GHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <200 410 220 410 "" 0 0 0 "">
  <200 330 200 410 "" 0 0 0 "">
  <200 330 220 330 "" 0 0 0 "">
  <560 330 590 330 "" 0 0 0 "">
  <590 330 590 410 "" 0 0 0 "">
  <560 410 590 410 "" 0 0 0 "">
  <280 330 320 330 "" 0 0 0 "">
  <280 410 320 410 "" 0 0 0 "">
  <320 330 360 330 "" 0 0 0 "">
  <320 410 360 410 "" 0 0 0 "">
  <320 330 320 410 "" 0 0 0 "">
  <420 330 460 330 "" 0 0 0 "">
  <420 410 460 410 "" 0 0 0 "">
  <460 330 500 330 "" 0 0 0 "">
  <460 410 500 410 "" 0 0 0 "">
  <460 330 460 410 "" 0 0 0 "">
  <460 410 460 470 "" 0 0 0 "">
  <320 410 320 470 "" 0 0 0 "">
  <140 410 200 410 "" 0 0 0 "">
  <140 410 140 480 "" 0 0 0 "">
  <590 410 640 410 "" 0 0 0 "">
  <640 410 640 470 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 870 619 482 319 3 #c0c0c0 1 00 1 1e+08 2e+08 2e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"dBS21" #ff0000 0 3 0 0 0>
	  <Mkr 4.99e+08 148 -426 3 0 0>
	<"dBS11" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 60 80 15 #000000 0 "Lumped Highpass Filter with Murata Parts">
  <Text 80 140 12 #000000 0 "A highpass filter is simulated using the components' pspice model\nprovided by Murata">
</Paintings>
