<Qucs Schematic 24.2.1>
<Properties>
  <View=-56,94,1560,988,0.963087,0,0>
  <Grid=10,10,1>
  <DataSet=3. HPF EM inductors and COTS caps.dat>
  <DataDisplay=3. HPF EM inductors and COTS caps.dpl>
  <OpenDisplay=0>
  <Script=1. Ideal Lumped Components.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=Lumped HPF 2 GHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: 01/04/2024>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <SUBST RO4003C 1 330 790 -30 24 0 0 "3.55" 1 "508um" 1 "32um" 1 "0.027" 1 "1e-10" 1 "0" 1>
  <.SP SP1 1 130 650 0 70 0 0 "lin" 1 "100MHz" 1 "4GHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 350 660 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "dBS11=dB(S[1,1])" 1 "yes" 0>
  <Eqn Resonator1 1 510 770 -31 16 0 0 "L_L1=5.7m" 1 "L_C1=16.5m" 1 "W_C1=5.7m" 1 "yes" 0>
  <Eqn Resonator2 1 650 770 -31 16 0 0 "L_L2=9.6m" 1 "L_C2=7.400m" 1 "W_C2=3.7m" 1 "yes" 0>
  <GND * 1 440 230 0 0 0 0>
  <Pac P2 1 840 320 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 840 350 0 0 0 0>
  <Pac P1 1 60 310 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 60 340 0 0 0 0>
  <Sub L3n5 1 320 410 64 -120 0 1 "L1.sch" 0>
  <Sub L5n5 1 600 430 64 -120 0 1 "L2.sch" 0>
  <GND * 1 120 230 0 0 0 0>
  <GND * 1 200 230 0 0 0 0>
  <GND * 1 690 230 0 0 0 0>
  <GND * 1 770 230 0 0 0 0>
  <GND * 1 300 490 0 0 0 0>
  <GND * 1 270 460 0 0 0 0>
  <GND * 1 550 560 0 0 0 3>
  <GND * 1 550 480 0 0 0 3>
  <GND * 1 580 590 0 0 0 0>
  <SPfile X6 5 770 200 -26 -19 0 0 "./Capacitors/15pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X5 5 690 200 -26 -19 0 0 "./Capacitors/3p3.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X1 5 120 200 -26 -19 0 0 "./Capacitors/2p2.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X4 5 200 200 -26 -19 0 0 "./Capacitors/10pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X2 5 440 200 -26 -19 0 0 "./Capacitors/1pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X7 5 300 460 20 -26 0 3 "./Capacitors/8pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X8 5 580 480 20 -26 0 3 "./Capacitors/3p3.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X9 5 580 560 20 -26 0 3 "./Capacitors/15pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <580 200 580 240 "" 0 0 0 "">
  <300 200 300 220 "" 0 0 0 "">
  <840 200 840 290 "" 0 0 0 "">
  <230 200 300 200 "" 0 0 0 "">
  <800 200 840 200 "" 0 0 0 "">
  <720 200 740 200 "" 0 0 0 "">
  <580 200 660 200 "" 0 0 0 "">
  <150 200 170 200 "" 0 0 0 "">
  <60 200 60 280 "" 0 0 0 "">
  <60 200 90 200 "" 0 0 0 "">
  <470 200 580 200 "" 0 0 0 "">
  <300 200 410 200 "" 0 0 0 "">
  <580 510 580 530 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 950 480 507 346 3 #c0c0c0 1 00 1 0 5e+08 4e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"dBS11" #0000ff 0 3 0 0 0>
	<"dBS21" #ff0000 0 3 0 0 0>
	  <Mkr 1.9915e+09 292 -322 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 330 450 12 #000000 0 "8 pF">
  <Text 620 470 12 #000000 0 "3.3 pF">
  <Text 620 550 12 #000000 0 "15 pF">
  <Text 100 160 12 #000000 0 "2.2 pF">
  <Text 180 160 12 #000000 0 "10 pF">
  <Text 421 163 12 #000000 0 "1 pF">
  <Text 670 160 12 #000000 0 "3.3 pF">
  <Text 750 160 12 #000000 0 "15 pF">
</Paintings>
