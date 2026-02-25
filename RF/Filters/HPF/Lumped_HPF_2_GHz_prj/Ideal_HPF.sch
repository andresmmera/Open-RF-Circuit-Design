<Qucs Schematic 24.2.1>
<Properties>
  <View=-415,-20,956,739,1.66123,545,66>
  <Grid=10,10,1>
  <DataSet=Ideal_HPF.dat>
  <DataDisplay=Ideal_HPF.dpl>
  <OpenDisplay=0>
  <Script=L1.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.PortSym -30 -60 1 0>
  <Line -30 -60 20 0 #000000 5 1>
  <Rectangle -10 -130 130 140 #000000 5 1 #c0c0c0 1 0>
  <Line 0 -90 20 -20 #000000 5 1>
  <Line 40 -110 -20 0 #000000 5 1>
  <Line 40 -110 30 30 #000000 5 1>
  <Line 70 -80 20 0 #000000 5 1>
  <Line 90 -80 20 -20 #000000 5 1>
  <Line 0 -60 20 -20 #000000 5 1>
  <Line 40 -80 -20 0 #000000 5 1>
  <Line 40 -80 30 30 #000000 5 1>
  <Line 70 -50 20 0 #000000 5 1>
  <Line 90 -50 20 -20 #000000 5 1>
  <Line 0 -30 20 -20 #000000 5 1>
  <Line 40 -50 -20 0 #000000 5 1>
  <Line 40 -50 30 30 #000000 5 1>
  <Line 70 -20 20 0 #000000 5 1>
  <Line 90 -20 20 -20 #000000 5 1>
  <Line 120 -60 20 0 #000000 5 1>
  <.PortSym 140 -60 2 180>
  <Line 40 -30 30 -10 #ff0000 5 1>
  <.ID 20 -166 HPF>
</Symbol>
<Components>
  <C C1 1 110 150 -26 17 0 0 "1.8 pF" 1 "" 0 "neutral" 0>
  <C C2 1 260 150 -26 17 0 0 "1.1 pF" 1 "" 0 "neutral" 0>
  <C C3 1 410 150 -26 17 0 0 "2.7 pF" 1 "" 0 "neutral" 0>
  <L L1 1 190 230 10 -26 0 1 "3.4 nH" 1 "" 0>
  <L L2 1 340 230 10 -26 0 1 "5 nH" 1 "" 0>
  <C C4 1 190 320 17 -26 0 1 "8.1 pF" 1 "" 0 "neutral" 0>
  <C C5 1 340 320 17 -26 0 1 "2.6 pF" 1 "" 0 "neutral" 0>
  <GND * 1 340 350 0 0 0 0>
  <GND * 1 190 350 0 0 0 0>
  <Port P1 1 30 150 -32 -47 0 0 "1" 1 "analog" 0 "v" 0 "" 0>
  <Port P2 1 490 150 4 -48 0 2 "2" 1 "analog" 0 "v" 0 "" 0>
</Components>
<Wires>
  <290 150 340 150 "" 0 0 0 "">
  <340 150 380 150 "" 0 0 0 "">
  <340 150 340 200 "" 0 0 0 "">
  <140 150 190 150 "" 0 0 0 "">
  <190 150 230 150 "" 0 0 0 "">
  <190 150 190 200 "" 0 0 0 "">
  <190 260 190 290 "" 0 0 0 "">
  <340 260 340 290 "" 0 0 0 "">
  <30 150 80 150 "" 0 0 0 "">
  <440 150 490 150 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
