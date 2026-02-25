<Qucs Schematic 24.2.0>
<Properties>
  <View=-294,18,1493,1076,0.870576,0,60>
  <Grid=10,10,1>
  <DataSet=2. [Sonnet results] Comparison between stubbed and classical QW.dat>
  <DataDisplay=2. [Sonnet results] Comparison between stubbed and classical QW.dpl>
  <OpenDisplay=0>
  <Script=SteppedLPF_o5_2GHz.m>
  <RunScript=0>
  <showFrame=3>
  <FrameText0=QW Line Coupled BPF w/ stubs 5 GHz>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: 28/03/24>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 1 280 380 0 0 0 0>
  <SPfile X1 1 280 350 -75 -62 0 0 "Coupled Line BPF o3 with stubs 5 GHz.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Pac P3 1 180 400 18 -26 0 1 "3" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 180 430 0 0 0 0>
  <GND * 1 360 430 0 0 0 0>
  <Pac P4 1 360 400 18 -26 0 1 "4" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <.SP SP1 1 70 800 0 71 0 0 "lin" 1 "4.25GHz" 1 "5.75GHz" 1 "300" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND * 1 280 550 0 0 0 0>
  <Pac P5 1 180 570 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <GND * 1 180 600 0 0 0 0>
  <GND * 1 360 600 0 0 0 0>
  <Pac P6 1 360 570 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "true" 0>
  <SPfile X2 1 280 520 -75 -62 0 0 "Coupled Line BPF o3 5 GHz.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <Eqn Eqn4 1 103 172 -28 15 0 0 "S21_dB_QW_Stubbed=dB(S[4,3])" 1 "S11_dB_QW_Stubbed=dB(S[3,3])" 1 "yes" 0>
  <Eqn Eqn3 1 103 72 -28 15 0 0 "S21_dB_QW_Classical=dB(S[2,1])" 1 "S11_dB_QW_Classical=dB(S[1,1])" 1 "yes" 0>
</Components>
<Wires>
  <180 350 250 350 "" 0 0 0 "">
  <180 350 180 370 "" 0 0 0 "">
  <310 350 360 350 "" 0 0 0 "">
  <360 350 360 370 "" 0 0 0 "">
  <180 520 250 520 "" 0 0 0 "">
  <180 520 180 540 "" 0 0 0 "">
  <310 520 360 520 "" 0 0 0 "">
  <360 520 360 540 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 580 680 572 420 3 #c0c0c0 1 00 1 4.2e+09 2e+08 5.8e+09 0 -50 5 0 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB_QW_Classical" #0000ff 0 3 0 0 0>
	<"S21_dB_QW_Classical" #ff0000 0 3 0 0 0>
	<"S11_dB_QW_Stubbed" #0000ff 2 3 0 2 0>
	<"S21_dB_QW_Stubbed" #ff0000 2 3 0 2 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 300 900 12 #000000 0 "Coupled-line bandpass filter \n Chebyshev 4.75GHz...5.25GHz \n Impedance matching 50 Ohm">
  <Text 810 620 12 #000000 0 "QW BPF w/o stubs">
  <Line 800 600 -40 0 #000000 2 2>
  <Line 800 630 -40 0 #000000 2 1>
  <Text 810 590 12 #000000 0 "QW BPF w/ stubs">
</Paintings>
