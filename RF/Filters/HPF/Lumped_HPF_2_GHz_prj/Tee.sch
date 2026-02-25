<Qucs Schematic 24.2.1>
<Properties>
  <View=-95,38,1051,672,1.35833,0,0>
  <Grid=10,10,1>
  <DataSet=Tee.dat>
  <DataDisplay=Tee.dpl>
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
  <Line -20 -20 10 0 #000080 2 1>
  <.PortSym -20 -20 1 0>
  <Rectangle -10 -30 40 20 #000000 1 1 #ffaa00 1 1>
  <Line 30 -20 10 0 #000080 2 1>
  <.PortSym 40 -20 2 180>
  <Rectangle 0 -10 20 20 #000000 1 1 #ffaa00 1 1>
  <Line 10 10 0 10 #000000 1 1>
  <.PortSym 10 20 3 0>
  <.ID -10 -66 Tee>
</Symbol>
<Components>
  <Port P1 1 340 150 -23 12 0 0 "1" 1 "analog" 0 "v" 0 "" 0>
  <Port P2 1 540 150 4 -48 0 2 "2" 1 "analog" 0 "v" 0 "" 0>
  <GND * 1 430 240 0 0 0 0>
  <Port P3 1 380 320 12 4 0 1 "3" 1 "analog" 0 "v" 0 "" 0>
  <SPfile X1 1 430 180 -26 -86 0 0 "./EM/Refinement/Tee.s3p" 1 "rectangular" 0 "linear" 0 "open" 0 "3" 0>
</Components>
<Wires>
  <340 150 400 150 "" 0 0 0 "">
  <460 150 540 150 "" 0 0 0 "">
  <380 210 380 320 "" 0 0 0 "">
  <380 210 400 210 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
