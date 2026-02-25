<Qucs Schematic 24.2.1>
<Properties>
  <View=-260,-75,1694,1055,1.16613,688,141>
  <Grid=10,10,1>
  <DataSet=4. HPF EM refinement.dat>
  <DataDisplay=4. HPF EM refinement.dpl>
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
  <GND * 1 570 100 0 0 0 0>
  <Sub Line3 5 520 90 -10 -66 0 0 "CapLine.sch" 0>
  <GND * 1 470 100 0 0 0 0>
  <SPfile X2 5 470 70 -26 -19 0 0 "./Capacitors/1pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Sub L3n5 1 440 320 64 -120 0 1 "L1.sch" 0>
  <SPfile X7 5 420 370 20 -26 0 3 "./Capacitors/8pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 390 480 0 0 0 3>
  <Sub Line7 5 440 420 -66 -10 0 1 "CapLine.sch" 0>
  <Sub GND1 1 360 670 0 4 0 0 "Ground.sch" 0>
  <.SP SP1 1 80 770 0 70 0 0 "lin" 1 "100MHz" 1 "5GHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 110 640 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "dBS11=dB(S[1,1])" 1 "yes" 0>
  <Sub Line1 1 80 90 -10 -66 0 0 "Line.sch" 0>
  <GND * 1 250 100 0 0 0 0>
  <SPfile X1 5 250 70 -26 -19 0 0 "./Capacitors/2p2.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 350 100 0 0 0 0>
  <Sub Line2 5 300 90 -10 -66 0 0 "CapLine.sch" 0>
  <Pac P1 1 60 170 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 60 200 0 0 0 0>
  <MTEE MS1 5 420 70 -26 -105 0 0 "RO4003C" 0 "0.2 mm" 0 "0.2 mm" 0 "0.2 mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <MTEE MS2 5 630 70 -26 -105 0 0 "RO4003C" 0 "0.2 mm" 0 "0.2 mm" 0 "0.2 mm" 0 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "showNumbers" 0>
  <GND * 1 810 100 0 0 0 0>
  <GND * 1 690 100 0 0 0 0>
  <SPfile X5 5 690 70 -26 -19 0 0 "./Capacitors/3p3.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Sub Line4 5 750 90 -10 -66 0 0 "CapLine.sch" 0>
  <Sub Line5 1 880 90 -10 -66 0 0 "Line.sch" 0>
  <Pac P2 1 1060 130 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 1060 160 0 0 0 0>
  <GND * 1 600 360 0 0 0 3>
  <SPfile X8 5 630 360 20 -26 0 3 "./Capacitors/3p3.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 600 490 0 0 0 3>
  <Sub Line6 5 650 430 -66 -10 0 1 "CapLine.sch" 0>
  <Sub L5n5 1 650 310 64 -120 0 1 "L2.sch" 0>
  <Pac P3 1 520 910 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 520 940 0 0 0 0>
  <Pac P4 1 880 910 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 880 940 0 0 0 0>
  <Eqn Eqn2 1 1020 840 -28 15 0 0 "dBS21_Ideal=dB(S[4,3])" 1 "dBS11_Ideal=dB(S[3,3])" 1 "yes" 0>
  <SPfile X9 5 630 490 20 -26 0 3 "./Capacitors/5pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X10 5 570 70 -26 -19 0 0 "./Capacitors/100pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X4 5 350 70 -26 -19 0 0 "./Capacitors/5pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X6 5 810 70 -26 -19 0 0 "./Capacitors/10pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <SPfile X11 5 420 480 20 -26 0 3 "./Capacitors/15pF.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <GND * 1 390 370 0 0 0 3>
  <Sub HPF_2GHz_Ideal 1 640 880 -1 -154 0 0 "Ideal_HPF.sch" 0>
</Components>
<Wires>
  <420 100 420 130 "" 0 0 0 "">
  <440 70 450 70 "" 0 0 0 "">
  <380 70 390 70 "" 0 0 0 "">
  <60 70 60 140 "" 0 0 0 "">
  <720 70 730 70 "" 0 0 0 "">
  <1060 70 1060 100 "" 0 0 0 "">
  <1020 70 1060 70 "" 0 0 0 "">
  <630 100 630 120 "" 0 0 0 "">
  <630 390 630 410 "" 0 0 0 "">
  <620 520 630 520 "" 0 0 0 "">
  <630 450 630 460 "" 0 0 0 "">
  <840 70 860 70 "" 0 0 0 "">
  <770 70 780 70 "" 0 0 0 "">
  <420 510 420 520 "" 0 0 0 "">
  <420 440 420 450 "" 0 0 0 "">
  <880 820 880 880 "" 0 0 0 "">
  <780 820 880 820 "" 0 0 0 "">
  <520 820 520 880 "" 0 0 0 "">
  <520 820 610 820 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 880 610 507 346 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"dBS11" #0000ff 0 3 0 0 0>
	<"dBS21" #ff0000 0 3 0 0 0>
	  <Mkr 1.9865e+09 239 -311 3 0 0>
	  <Mkr 4.02e+09 385 -314 3 0 0>
	<"dBS21_Ideal" #000000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 551 33 12 #000000 0 "100 pF">
  <Text 451 33 12 #000000 0 "1 pF">
  <Text 450 360 12 #000000 0 "8 pF">
  <Text 441 473 12 #000000 0 "15 pF">
  <Text 230 30 12 #000000 0 "2.2 pF">
  <Text 790 30 12 #000000 0 "10 pF">
  <Text 670 30 12 #000000 0 "3.3 pF">
  <Text 670 480 12 #000000 0 "5 pF">
  <Text 670 350 12 #000000 0 "3.3 pF">
  <Text 330 30 12 #000000 0 "5 pF">
  <Rectangle 300 340 200 190 #000000 3 2 #c0c0c0 1 0>
  <Rectangle 570 340 170 200 #000000 3 2 #c0c0c0 1 0>
  <Text 650 420 12 #000000 0 "C_{eq} = 2 pF">
  <Text 320 410 12 #000000 0 "C_{eq} = 5.2 pF">
</Paintings>
