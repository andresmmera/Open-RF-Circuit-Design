<Qucs Schematic 25.2.0>
<Properties>
  <View=-597,-103,1615,1103,0.708709,0,0>
  <Grid=10,10,1>
  <DataSet=0_README.dat>
  <DataDisplay=0_README.dpl>
  <OpenDisplay=0>
  <Script=1_README.m>
  <RunScript=0>
  <showFrame=2>
  <FrameText0=MOSFET Switching>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Feb 15, 2026>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Sub SUB4 5 400 810 310 -16 0 0 "2_2_DC_Switch_NMOSFET_GPO_driver.sch" 0>
  <Sub SUB3 5 130 810 200 -26 0 0 "2_1_DC_Switch_NMOSFET.sch" 0>
  <Sub SUB2 5 390 660 330 -16 0 0 "1_2_DC_Switch_PMOSFET_GPO_driver.sch" 0>
  <Sub SUB1 5 110 660 230 -16 0 0 "1_1_DC_Switch_PMOSFET.sch" 0>
  <Sub SUB6 5 440 510 240 -16 0 0 "2_0_NMOSFET_CurveTracer.sch" 0>
  <Sub SUB5 5 110 510 240 -16 0 0 "1_0_PMOSFET_CurveTracer.sch" 0>
</Components>
<Wires>
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 50 50 20 #000000 0 "MOSFET Switching">
  <Text 50 120 12 #000000 0 "The aim of this tutorial is to illustrate the basics for using MOSFETs as switches">
  <Text 50 160 12 #000000 0 "MOSFETS can be used to switch ON/OFF big loads depending on the gate voltage">
  <Text 70 210 12 #000000 0 "Features:\n* Very high input impedance: Easy to drive from microcontrollers (minimal current).\n* Low RDS -> High currents can pass through the channel with minimum heating">
  <Text 70 320 10 #000000 0 "* Low‑side switch: \nN‑channel MOSFET between load and GND, source at GND, G driven positive vs GND to turn ON.\n* High‑side switch: \nP‑channel MOSFET between supply and load, source at +V, G driven more negative than S to turn ON">
  <Text 60 290 12 #000000 0 "Low‑side vs high‑side switch">
  <Text 60 570 15 #000000 0 "High‑side switching">
  <Text 60 710 15 #000000 0 "Low-side switching">
  <Text 60 430 15 #000000 0 "PMOSFET vs NMOSFET DCIV Curves">
</Paintings>
