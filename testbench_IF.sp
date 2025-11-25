.TEMP 25
.OPTION

**Change your period here**
.param period=0.5n

**Change the library path to your path**
* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP

**Include your .sp file here**
.include "./neuron.sp"

** This parameter is related to the number of pipelining FFs you add in your design.
** -1 if no pipeline, 0 if one pipelining FF, 1 if two pipelining FFs.
.param Nc = -1 
************************************************
****DO NOT CHANGE ANYTHING BELOW THIS LINE!!****
************************************************
.param pvdd =0.8
.param period1='period*2'
.param period2='period*4'
.param period3='period*8'
.param period4='period*16'
.param period5='period*32'
.param period6='period*64'
.param tr='30p'
.param tf='30p'
.param d='period-100p'
.param pw = '(period/2)-((tr+tf)/2)'
.param pw1 = '(period1/2)-((tr+tf)/2)'
.param pw2 = '(period2/2)-((tr+tf)/2)'
.param pw3 = '(period3/2)-((tr+tf)/2)'
.param pw4 = '(period4/2)-((tr+tf)/2)'
.param pw5 = '(period5/2)-((tr+tf)/2)'
.param pw6 = '(period6/2)-((tr+tf)/2)'

Vgnd gnd! 0 DC=0
Vvdd vdd! 0 DC=0.8

xtest Clock Clock_inv F S0 S1 S2 S3 W0 W1 W2 W3 X00 X01 X02 X03 X10 
+ X11 X12 X13 X20 X21 X22 X23 X30 X31 X32 X33 neuron

C0 F gnd! 5E-15F

xinv Vin Vout Inv

v0in3 X03 0 PULSE (0 0.8 d tr tf pw4 period4)
v0in2 X02 0 PULSE (0 0.8 d tr tf pw3 period3)
v0in1 X01 0 PULSE (0 0.8 d tr tf pw2 period2)
v0in0 X00 0 PULSE (0 0.8 d tr tf pw1 period1)

v1in3 X13 0 PULSE (0 0.8 d tr tf pw3 period3)
v1in2 X12 0 PULSE (0 0.8 d tr tf pw4 period4)
v1in1 X11 0 PULSE (0 0.8 d tr tf pw1 period1)
v1in0 X10 0 PULSE (0 0.8 d tr tf pw2 period2)

v2in3 X23 0 PULSE (0 0.8 d tr tf pw2 period2)
v2in2 X22 0 PULSE (0 0.8 d tr tf pw3 period3)
v2in1 X21 0 PULSE (0 0.8 d tr tf pw4 period4)
v2in0 X20 0 PULSE (0 0.8 d tr tf pw1 period1)

v3in3 X33 0 PULSE (0 0.8 d tr tf pw1 period1)
v3in2 X32 0 PULSE (0 0.8 d tr tf pw3 period3)
v3in1 X31 0 PULSE (0 0.8 d tr tf pw2 period2)
v3in0 X30 0 PULSE (0 0.8 d tr tf pw4 period4)

vW3 W3 0 PULSE (0 0.8 d tr tf pw5 period5)
vW2 W2 0 PULSE (0 0.8 d tr tf pw5 period5)
vW1 W1 0 PULSE (0.8 0 d tr tf pw6 period6)
vW0 W0 0 PULSE (0.8 0 d tr tf pw6 period6)

vCLK Clock 0 PULSE (0 0.8 0 tr tf pw period)
vCLKbar Clock_inv 0 PULSE (0.8 0 0 tr tf pw period)


.measure tran F_1 FIND v(F) WHEN v(Clock)=0 FALL=4+Nc
.measure tran F_2 FIND v(F) WHEN v(Clock)=0 FALL=5+Nc
.measure tran F_3 FIND v(F) WHEN v(Clock)=0 FALL=6+Nc
.measure tran F_4 FIND v(F) WHEN v(Clock)=0 FALL=7+Nc
.measure tran F_5 FIND v(F) WHEN v(Clock)=0 FALL=8+Nc
.measure tran F_6 FIND v(F) WHEN v(Clock)=0 FALL=9+Nc
.measure tran F_7 FIND v(F) WHEN v(Clock)=0 FALL=10+Nc
.measure tran F_8 FIND v(F) WHEN v(Clock)=0 FALL=11+Nc
.measure tran F_9 FIND v(F) WHEN v(Clock)=0 FALL=12+Nc
.measure tran F_10 FIND v(F) WHEN v(Clock)=0 FALL=13+Nc
.measure tran F_11 FIND v(F) WHEN v(Clock)=0 FALL=14+Nc
.measure tran F_12 FIND v(F) WHEN v(Clock)=0 FALL=15+Nc
.measure tran F_13 FIND v(F) WHEN v(Clock)=0 FALL=16+Nc
.measure tran F_14 FIND v(F) WHEN v(Clock)=0 FALL=17+Nc
.measure tran F_15 FIND v(F) WHEN v(Clock)=0 FALL=18+Nc
.measure tran F_16 FIND v(F) WHEN v(Clock)=0 FALL=19+Nc
.measure tran F_17 FIND v(F) WHEN v(Clock)=0 FALL=20+Nc
.measure tran F_18 FIND v(F) WHEN v(Clock)=0 FALL=21+Nc
.measure tran F_19 FIND v(F) WHEN v(Clock)=0 FALL=22+Nc
.measure tran F_20 FIND v(F) WHEN v(Clock)=0 FALL=23+Nc
.measure tran F_21 FIND v(F) WHEN v(Clock)=0 FALL=24+Nc
.measure tran F_22 FIND v(F) WHEN v(Clock)=0 FALL=25+Nc
.measure tran F_23 FIND v(F) WHEN v(Clock)=0 FALL=26+Nc
.measure tran F_24 FIND v(F) WHEN v(Clock)=0 FALL=27+Nc
.measure tran F_25 FIND v(F) WHEN v(Clock)=0 FALL=28+Nc
.measure tran F_26 FIND v(F) WHEN v(Clock)=0 FALL=29+Nc
.measure tran F_27 FIND v(F) WHEN v(Clock)=0 FALL=30+Nc
.measure tran F_28 FIND v(F) WHEN v(Clock)=0 FALL=31+Nc
.measure tran F_29 FIND v(F) WHEN v(Clock)=0 FALL=32+Nc
.measure tran F_30 FIND v(F) WHEN v(Clock)=0 FALL=33+Nc
.measure tran F_31 FIND v(F) WHEN v(Clock)=0 FALL=34+Nc
.measure tran F_32 FIND v(F) WHEN v(Clock)=0 FALL=35+Nc
.measure tran F_33 FIND v(F) WHEN v(Clock)=0 FALL=36+Nc
.measure tran F_34 FIND v(F) WHEN v(Clock)=0 FALL=37+Nc
.measure tran F_35 FIND v(F) WHEN v(Clock)=0 FALL=38+Nc
.measure tran F_36 FIND v(F) WHEN v(Clock)=0 FALL=39+Nc
.measure tran F_37 FIND v(F) WHEN v(Clock)=0 FALL=40+Nc
.measure tran F_38 FIND v(F) WHEN v(Clock)=0 FALL=41+Nc
.measure tran F_39 FIND v(F) WHEN v(Clock)=0 FALL=42+Nc
.measure tran F_40 FIND v(F) WHEN v(Clock)=0 FALL=43+Nc
.measure tran F_41 FIND v(F) WHEN v(Clock)=0 FALL=44+Nc
.measure tran F_42 FIND v(F) WHEN v(Clock)=0 FALL=45+Nc
.measure tran F_43 FIND v(F) WHEN v(Clock)=0 FALL=46+Nc
.measure tran F_44 FIND v(F) WHEN v(Clock)=0 FALL=47+Nc
.measure tran F_45 FIND v(F) WHEN v(Clock)=0 FALL=48+Nc
.measure tran F_46 FIND v(F) WHEN v(Clock)=0 FALL=49+Nc
.measure tran F_47 FIND v(F) WHEN v(Clock)=0 FALL=50+Nc
.measure tran F_48 FIND v(F) WHEN v(Clock)=0 FALL=51+Nc
.measure tran F_49 FIND v(F) WHEN v(Clock)=0 FALL=52+Nc
.measure tran F_50 FIND v(F) WHEN v(Clock)=0 FALL=53+Nc
.measure tran F_51 FIND v(F) WHEN v(Clock)=0 FALL=54+Nc
.measure tran F_52 FIND v(F) WHEN v(Clock)=0 FALL=55+Nc
.measure tran F_53 FIND v(F) WHEN v(Clock)=0 FALL=56+Nc
.measure tran F_54 FIND v(F) WHEN v(Clock)=0 FALL=57+Nc
.measure tran F_55 FIND v(F) WHEN v(Clock)=0 FALL=58+Nc
.measure tran F_56 FIND v(F) WHEN v(Clock)=0 FALL=59+Nc
.measure tran F_57 FIND v(F) WHEN v(Clock)=0 FALL=60+Nc
.measure tran F_58 FIND v(F) WHEN v(Clock)=0 FALL=61+Nc
.measure tran F_59 FIND v(F) WHEN v(Clock)=0 FALL=62+Nc
.measure tran F_60 FIND v(F) WHEN v(Clock)=0 FALL=63+Nc
.measure tran F_61 FIND v(F) WHEN v(Clock)=0 FALL=64+Nc
.measure tran F_62 FIND v(F) WHEN v(Clock)=0 FALL=65+Nc
.measure tran F_63 FIND v(F) WHEN v(Clock)=0 FALL=66+Nc
.measure tran F_64 FIND v(F) WHEN v(Clock)=0 FALL=67+Nc

.tran 2p '70*period' Start=0.0
.probe v(*)
.option MEASDGT=5
.option post
.end
