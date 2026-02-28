<Qucs Schematic 25.2.0>
<Properties>
  <View=-1913,-18,2939,1476,0.838235,1100,148>
  <Grid=10,10,1>
  <DataSet=0_README.dat>
  <DataDisplay=0_README.dpl>
  <OpenDisplay=0>
  <Script=0_README.m>
  <RunScript=0>
  <showFrame=2>
  <FrameText0=Microstrip Branch-Line Coupler 2 GHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 15, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Sub SUB6 5 70 640 310 -16 0 0 "2_2_BranchLine_MLIN_JunctionsFees.sch" 0>
  <Sub SUB7 5 70 700 310 -16 0 0 "2_3_BranchLine_MLIN_FineTuned.sch" 0>
  <Sub SUB8 5 80 800 340 -16 0 0 "3_BranchLine_EMerge_1st_approach.sch" 0>
  <Sub SUB5 5 70 580 200 -16 0 0 "2_1_BranchLine_MLIN.sch" 0>
  <Sub SUB1 5 80 500 210 -16 0 0 "1_BranchLine_TLIN.sch" 0>
  <Sub SUB10 5 440 500 210 -16 0 0 "1_DoubleBox_BranchLine_TLIN.sch" 0>
  <Sub SUB11 5 430 580 200 -16 0 0 "2_1_DoubleBox_BranchLine_MLIN.sch" 0>
  <Sub SUB12 5 430 640 310 -16 0 0 "2_2_DoubleBox_BranchLine_MLIN_JunctionsFees.sch" 0>
  <Sub SUB13 5 440 860 290 -16 0 0 "4_DoubleBox_BranchLine_EMerge_FineTuned.sch" 0>
  <Sub SUB9 5 70 860 290 -16 0 0 "4_BranchLine_EMerge_FineTuned.sch" 0>
</Components>
<Wires>
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 60 70 20 #000000 0 "Microstrip Branch-Line Coupler 2000 MHz">
  <Text 70 150 12 #000000 0 "The aim of this project is to illustrate the design of a microstrip Branch-Line coupler using RO4003C">
  <Text 70 220 12 #000000 0 "The process starts by designing the coupler with ideal transmission line. Then, microstrip lines are synthesized \nincluding tee junctions and feed lines\n\n">
  <Text 80 310 12 #000000 0 "EMerge software is used for EM simulation. Check it out!\nhttps://github.com/FennisRobert/EMerge\nhttps://www.emerge-software.com/">
  <Rectangle 70 290 460 100 #ff0000 1 1 #c0c0c0 1 0>
  <Text 40 430 15 #000000 0 "Single-Box Branch-Line">
  <Text 70 180 12 #000000 0 "In order to broaden the BW, the double-box variant is also implemented">
  <Text 430 430 15 #000000 0 "Double-Box Branch-Line">
</Paintings>
