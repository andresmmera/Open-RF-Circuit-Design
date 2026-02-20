<Qucs Schematic 25.2.0>
<Properties>
  <View=-430,-205,1424,818,1.02329,304,157>
  <Grid=10,10,1>
  <DataSet=2_1_3_Lowpass_Prototype_Frequency_scaling.dat>
  <DataDisplay=2_1_3_Lowpass_Prototype_Frequency_scaling.dpl>
  <OpenDisplay=0>
  <Script=2_1_Lowpass_Prototype_Impedance_scaling.m>
  <RunScript=0>
  <showFrame=1>
  <FrameText0=Frequency and Impedance Scaling>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Dec 21, 2025>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 150 -16 SUB>
  <.PortSym 0 0 1 0 P1>
  <Text 20 -10 9 #000000 0 "Frequency Scaling">
  <Rectangle -20 -20 160 40 #000000 1 1 #c0c0c0 1 0>
</Symbol>
<Components>
  <Eqn Scaling_Z 1 250 560 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <Eqn F_Scaling 1 610 150 -31 18 0 0 "C1_f=C1/w0" 1 "L2_f=L2/w0" 1 "C3_f=C3/w0" 1 "yes" 0>
  <Eqn FrequencyScaling 1 470 140 -31 18 0 0 "f0=500e6" 1 "w0=2*pi*f0" 1 "yes" 0>
  <GND * 1 130 440 0 0 0 0>
  <GND * 1 200 440 0 0 0 0>
  <GND * 1 330 440 0 0 0 0>
  <GND * 1 400 440 0 0 0 0>
  <C C1 1 200 410 -12 60 0 1 "C1_f" 1 "" 0 "neutral" 0>
  <L L1 1 270 360 -30 -50 0 0 "L2_f" 1 "" 0>
  <C C2 1 330 410 -10 61 0 1 "C3_f" 1 "" 0 "neutral" 0>
  <Eqn gi_coeffs 1 90 150 -31 18 0 0 "g0=1.000000" 1 "g1=0.629180" 1 "g2=0.970282" 1 "g3=0.629180" 1 "g4=1.000000" 1 "no" 0>
  <Eqn ImpedanceScaling 1 210 140 -31 18 0 0 "R0=50" 1 "yes" 0>
  <Eqn Z_Scaling1 1 350 150 -31 18 0 0 "Z0=g0*R0" 1 "C1=g1/R0" 1 "L2=g2*R0" 1 "C3=g3/R0" 1 "Z4=g4*R0" 1 "yes" 0>
  <Pac T1 1 130 410 -64 -21 0 1 "1" 1 "Z0" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac T2 1 400 410 24 -19 0 1 "2" 1 "Z4" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <.SP SP1 1 80 550 0 56 0 0 "lin" 1 "0" 1 "5e9" 1 "101" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Port P1 5 960 50 -23 12 0 0 "1" 0 "analog" 0>
</Components>
<Wires>
  <130 360 200 360 "" 0 0 0 "">
  <130 360 130 380 "" 0 0 0 "">
  <200 360 200 380 "" 0 0 0 "">
  <200 360 240 360 "" 0 0 0 "">
  <300 360 330 360 "" 0 0 0 "">
  <330 360 330 380 "" 0 0 0 "">
  <330 360 400 360 "" 0 0 0 "">
  <400 360 400 380 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 560 580 336 223 3 #c0c0c0 1 00 1 -1 0.5 1 0 -50 5 5 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"S11_dB" #0000ff 1 3 0 0 0>
	<"S21_dB" #ff0000 1 3 0 0 0>
	  <Mkr 5e+08 186 -165 3 0 0>
  </Rect>
  <Tab 580 341 360 61 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"Z0" #0000ff 0 3 1 0 0>
	<"C1_f" #0000ff 0 3 1 0 0>
	<"L2_f" #0000ff 0 3 1 0 0>
	<"C3_f" #0000ff 0 3 1 0 0>
	<"Z4" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
  <Text 50 50 15 #000000 0 "Frequency and impedance scaling">
  <Text 60 90 9 #000000 0 "To move the cutoff frequency from ω_c = 1 rad/s to an arbitrary frequency s -> s/ω_0. Where ω_0 = 2 · π · f_0 and f_0 is the desired cutof frequency">
  <Arrow 160 240 150 0 20 8 #000000 1 1 0>
  <Arrow 230 190 0 50 20 8 #000000 1 1 0>
  <Arrow 410 240 150 0 20 8 #000000 1 1 0>
  <Arrow 480 210 0 30 20 8 #000000 1 1 0>
  <Arrow 660 190 100 70 20 8 #000000 1 1 0>
</Paintings>
