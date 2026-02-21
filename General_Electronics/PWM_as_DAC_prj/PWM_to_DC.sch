<Qucs Schematic 25.2.0>
<Properties>
  <View=-214,-1,1224,893,1.09056,0,120>
  <Grid=10,10,1>
  <DataSet=PWM_to_DC.dat>
  <DataDisplay=PWM_to_DC.dpl>
  <OpenDisplay=0>
  <Script=PWM_to_DC.m>
  <RunScript=0>
  <showFrame=1>
  <FrameText0=PWM signal to DC>
  <FrameText1=Drawn By: Andrés Martínez Mera>
  <FrameText2=Date: Dec 28, 2025>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 110 420 0 0 0 0>
  <GND * 1 300 420 0 0 0 0>
  <R R1 1 250 280 -26 15 0 0 "R" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 300 390 17 -26 0 1 "C" 1 "" 0 "neutral" 0>
  <.TR TR1 1 50 570 0 56 0 0 "lin" 1 "0" 1 "200m" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vrect V1 1 110 390 18 -26 0 1 "Vhigh" 1 "TH" 1 "TL" 1 "1 us" 0 "1 us" 0 "0 ns" 0 "0 V" 1>
  <OpAmp OP1 1 430 300 -26 42 0 0 "1e6" 1 "15 V" 0>
  <R R2 1 530 390 15 -26 0 1 "10 k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 530 420 0 0 0 0>
  <SpicePar CircuitParams 1 390 550 -27 18 0 0 "R=1k" 1 "C=10u" 1>
  <SpicePar Settings 1 220 550 -27 18 0 0 "f=25k" 1 "Vhigh=3.3" 1 "Vtarget=2" 1 "DutyCycle=Vtarget/Vhigh" 1 "T=1/f" 1 "TH=DutyCycle*T" 1 "TL=T-TH" 1>
</Components>
<Wires>
  <110 280 110 360 "" 0 0 0 "">
  <110 280 220 280 "V_PWM" 90 240 27 "">
  <280 280 300 280 "" 0 0 0 "">
  <300 280 300 360 "" 0 0 0 "">
  <370 320 400 320 "" 0 0 0 "">
  <370 320 370 390 "" 0 0 0 "">
  <370 390 490 390 "" 0 0 0 "">
  <490 300 490 390 "" 0 0 0 "">
  <470 300 490 300 "" 0 0 0 "">
  <300 280 400 280 "" 0 0 0 "">
  <530 300 530 360 "" 0 0 0 "">
  <490 300 530 300 "Vout" 530 270 26 "">
</Wires>
<Diagrams>
  <Rect 644 295 325 208 3 #c0c0c0 1 00 1 0 0.2 1 0 0 0.5 3.5 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(vout)" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 646 601 322 200 3 #c0c0c0 1 00 0 0 0.0001 0.0005 1 -0.33 1 3.63 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(v_pwm)" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 40 40 12 #000000 0 "How to use a PWM signal to get a DC voltage?">
  <Text 40 80 9 #000000 0 "This strategy is useful for getting an analog DC signal from a microcontroller without DAC ports">
  <Text 50 150 9 #000000 0 "Rule of thumb: V_{out} ​≈ DutyCycle ⋅ V_{high​} ->  DutyCycle ≈ V_{out}/V_{high}">
  <Text 740 50 12 #000000 0 "Output voltage">
  <Text 760 360 12 #000000 0 "Input PWM Signal">
  <Rectangle 60 350 140 170 #000000 1 1 #c0c0c0 1 0>
  <Text 80 470 9 #000000 0 "Microcontroller">
  <Text 100 490 9 #000000 0 "PWM port">
  <Rectangle 360 220 140 190 #000000 1 1 #c0c0c0 1 0>
  <Text 380 240 9 #000000 0 "Source follower">
  <Text 250 240 9 #000000 0 "RC filter">
  <Rectangle 210 220 140 230 #000000 1 1 #c0c0c0 1 0>
  <Text 40 100 9 #000000 0 "(Only valid for very low-speed needs)">
  <Rectangle 40 140 400 40 #000000 1 1 #c0c0c0 1 0>
</Paintings>
