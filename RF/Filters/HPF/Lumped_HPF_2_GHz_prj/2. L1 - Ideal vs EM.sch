<Qucs Schematic 24.2.1>
<Properties>
  <View=-524,-130,2064,1302,0.601303,0,0>
  <Grid=10,10,1>
  <DataSet=2. L1 - Ideal vs EM.dat>
  <DataDisplay=2. L1 - Ideal vs EM.dpl>
  <OpenDisplay=0>
  <Script=1. Ideal Lumped Components.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=L1 synthesis>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: 10/04/2024>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SP SP1 1 60 760 0 68 0 0 "lin" 1 "100MHz" 1 "4GHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <L L1 1 270 130 16 -20 0 3 "3.4nH" 1 "" 0>
  <GND * 1 100 170 0 0 0 0>
  <Pac P1 1 100 140 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 270 170 0 0 0 0>
  <GND * 1 100 390 0 0 0 0>
  <Pac P2 1 100 360 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 270 500 0 0 0 0>
  <Sub L3n5 1 290 480 64 -120 0 1 "L1.sch" 0>
  <Eqn Eqn1 1 450 200 -31 16 0 0 "Y=stoy(S)" 1 "Z=stoz(S)" 1 "yes" 0>
  <Eqn L_Sonnet 1 450 310 -31 16 0 0 "L_EM=-1e9/(imag(Y[2,2])*(2*3.14159*frequency))" 1 "R_EM=real(Z[2,2])" 1 "Q=2*3.14159*frequency*(L_EM*1e-9)/R_EM" 1 "yes" 0>
  <Eqn IdealInductance 1 450 70 -31 16 0 0 "L_ideal=-1e9/(imag(Y[1,1])*(2*3.14159*frequency))" 1 "yes" 0>
</Components>
<Wires>
  <270 160 270 170 "" 0 0 0 "">
  <270 60 270 100 "" 0 0 0 "">
  <100 60 100 110 "" 0 0 0 "">
  <100 280 100 330 "" 0 0 0 "">
  <100 280 270 280 "" 0 0 0 "">
  <270 280 270 290 "" 0 0 0 "">
  <100 60 270 60 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 890 859 448 319 3 #c0c0c0 1 00 1 -1 0.2 1 0 0 10 150 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"Q" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 870 406 466 312 3 #c0c0c0 1 00 1 0 5e+08 4e+09 0 0 0.5 6 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"L_ideal" #0000ff 0 3 0 0 0>
	<"L_EM" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 1080 510 12 #000000 0 "Q factor">
  <Text 1060 60 12 #000000 0 "Inductance">
</Paintings>
