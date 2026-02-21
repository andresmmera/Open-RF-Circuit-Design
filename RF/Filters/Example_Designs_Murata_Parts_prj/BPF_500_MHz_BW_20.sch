<Qucs Schematic 25.2.0>
<Properties>
  <View=-461,-375,1885,1100,0.668491,0,131>
  <Grid=10,10,1>
  <DataSet=BPF_500_MHz_BW_20.dat>
  <DataDisplay=BPF_500_MHz_BW_20.dpl>
  <OpenDisplay=0>
  <Script=HPF_500_MHz.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Lumped BPF 500 MHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Aug 2024>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Pac P1 1 80 470 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 80 500 0 0 0 0>
  <Lib L1 1 220 460 13 -10 0 1 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/LQW18AN" 0 "10 nH" 0>
  <GND * 1 220 490 0 0 0 0>
  <GND * 1 280 490 0 0 0 0>
  <Lib L2 1 380 460 13 -10 0 1 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/LQW18AN" 0 "10 nH" 0>
  <GND * 1 380 490 0 0 0 0>
  <GND * 1 440 490 0 0 0 0>
  <Lib C5 1 440 460 13 0 0 1 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/GRM03" 0 "6 pF" 0>
  <Lib C1 1 170 370 -10 13 0 0 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/GRM03" 0 "4.7 pF" 0>
  <Lib C10 1 330 370 -10 13 0 0 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/GRM03" 0 "2.2 pF" 0>
  <Lib C12 1 280 460 13 0 0 1 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/GRM03" 0 "6 pF" 0>
  <Pac P2 1 810 450 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 810 480 0 0 0 0>
  <Lib L3 1 640 470 13 -10 0 1 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/LQW18AN" 0 "10 nH" 0>
  <GND * 1 640 500 0 0 0 0>
  <GND * 1 700 500 0 0 0 0>
  <Lib C9 1 730 370 -10 13 0 0 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/GRM03" 0 "4.7 pF" 0>
  <Lib C13 1 700 470 13 0 0 1 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/GRM03" 0 "6 pF" 0>
  <GND * 1 510 490 0 0 0 0>
  <Lib C14 1 510 440 13 0 0 1 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/GRM03" 0 "0.5 pF" 0>
  <Lib C11 1 560 370 -10 13 0 0 "/home/andresmmera/.qucs/Example_Designs_Murata_Parts_prj/GRM03" 0 "2.2 pF" 0>
  <Eqn Eqn1 1 360 630 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "dBS11=dB(S[1,1])" 1 "yes" 0>
  <.SP SP1 1 140 620 0 56 0 0 "lin" 1 "300MHz" 1 "700MHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <280 400 280 430 "" 0 0 0 "">
  <220 400 220 430 "" 0 0 0 "">
  <220 400 250 400 "" 0 0 0 "">
  <250 400 280 400 "" 0 0 0 "">
  <250 370 250 400 "" 0 0 0 "">
  <250 370 300 370 "" 0 0 0 "">
  <440 400 440 430 "" 0 0 0 "">
  <380 400 380 430 "" 0 0 0 "">
  <360 370 440 370 "" 0 0 0 "">
  <380 400 440 400 "" 0 0 0 "">
  <200 370 250 370 "" 0 0 0 "">
  <80 370 80 440 "" 0 0 0 "">
  <80 370 140 370 "" 0 0 0 "">
  <700 410 700 440 "" 0 0 0 "">
  <640 410 640 440 "" 0 0 0 "">
  <640 410 670 410 "" 0 0 0 "">
  <670 410 700 410 "" 0 0 0 "">
  <670 370 670 410 "" 0 0 0 "">
  <810 370 810 420 "" 0 0 0 "">
  <760 370 810 370 "" 0 0 0 "">
  <670 370 700 370 "" 0 0 0 "">
  <440 400 510 400 "" 0 0 0 "">
  <510 400 510 410 "" 0 0 0 "">
  <510 470 510 490 "" 0 0 0 "">
  <590 370 670 370 "" 0 0 0 "">
  <440 370 530 370 "" 0 0 0 "">
  <440 370 440 400 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 970 589 482 319 3 #c0c0c0 1 00 1 1e+08 2e+08 2e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"dBS21" #ff0000 0 3 0 0 0>
	  <Mkr 4.5e+08 -12 -409 3 0 0>
	  <Mkr 5.5e+08 311 -409 3 0 0>
	<"dBS11" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 80 70 15 #000000 0 "Direct-Coupled Bandpass Filter with Murata Parts">
  <Text 100 190 12 #000000 0 "A direct-coupled bandpass filter is simulated using the components' pspice model\nprovided by Murata">
</Paintings>
