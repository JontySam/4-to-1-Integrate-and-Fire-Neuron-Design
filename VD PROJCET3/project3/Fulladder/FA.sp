** Generated for: hspiceD
** Generated on: Dec  7 13:32:22 2024
** Design library name: trail
** Design cell name: FA
** Design view name: schematic




** Library name: trail
** Cell name: AND
** View name: schematic
.subckt AND a b gnd vdd y
xm4 y net1 gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net2 b gnd gnd nch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net1 a net2 gnd nch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 y net1 vdd vdd pch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net1 b vdd vdd pch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 net1 a vdd vdd pch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends AND
** End of subcircuit definition.

** Library name: trail
** Cell name: EXOR
** View name: schematic
.subckt EXOR a b gnd vdd y
xm12 invb b gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm11 net3 a gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm7 y net3 net6 gnd nch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm6 y a net4 gnd nch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net4 b gnd gnd nch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net6 invb gnd gnd nch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm10 invb b vdd vdd pch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm9 net3 a vdd vdd pch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 y invb net2 vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 y b net1 vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net1 net3 vdd vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 net2 a vdd vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends EXOR
** End of subcircuit definition.

** Library name: trail
** Cell name: HA
** View name: schematic
.subckt HA a b c gnd s vdd
xi0 a b gnd vdd c AND
xi1 a b gnd vdd s EXOR
.ends HA
** End of subcircuit definition.

** Library name: trail
** Cell name: OR2
** View name: schematic
.subckt OR2 a b gnd vdd y
xm4 y net2 vdd vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net2 a net1 vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net1 b vdd vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 y net2 gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net2 b gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 net2 a gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends OR2
** End of subcircuit definition.

** Library name: trail
** Cell name: FA
** View name: schematic
xi1 net1 c net3 gnd s vdd HA
xi0 a b net2 gnd net1 vdd HA
xi2 net2 net3 gnd vdd cout OR2
.END

