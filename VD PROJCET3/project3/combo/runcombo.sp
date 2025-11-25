** Run Inverter file

.TEMP 25
*.OPTION INGOLD=2 ARTIST=2 PSF=2 MEASOUT=1 PARHIER=LOCAL PROBE=0 MARCH=2 ACCURACY=1 POST RUNLVL=5
.OPTION POST

* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP
* Slow NMOS, slow PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l SSMacro_MOS_MOSCAP
* Fast NMOS, fast PMOS process corner model file 
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l FFMacro_MOS_MOSCAP

.INCLUDE combo.sp 
*Voltage sources
V1 x00 0 0
V2 x01 0 0.8
V3 X02 0 0.8
V4 X03 0 0.8


V5 X10 0 0.8
V6 X11 0 0
V7 X12 0 0
V8 X13 0 0

V9 X20 0 0
V10 X21 0 0
V11 X22 0 0
V12 X23 0 0

V13 X30 0 PULSE(0 0.8 40p 20p 20p 500p 1000p)
V14 X31 0 0
V15 X32 0 0
V16 X33 0 0


V17 VDD 0 0.8
V18 GND 0 0

V19 W0 0 0.8
V20 W1 0 0.8
V21 W2 0 0.8
V22 W3 0 0.8
 

* Small 1fF output capacitance for realistic simulation
*C1 Y 0 10fF
.OP
.TRAN 0.01p 100ns
*.DC V1 0 0.8 0.001

*.MEASURE TRAN thl TRIG V(a) VAL=0.35 TD=100p RISE=2 TARG V(y) VAL=0.35 TD=100p FALL=2
*.measure tran freq param= '20/t1'
*.measure power rms power
.END
