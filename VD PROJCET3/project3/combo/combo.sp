** Generated for: hspiceD
** Generated on: Dec  7 20:31:32 2024
** Design library name: trail
** Design cell name: COMBO
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
xm5 y net2 gnd gnd nch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net2 b gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 net2 a gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends OR2
** End of subcircuit definition.

** Library name: trail
** Cell name: FA
** View name: schematic
.subckt FA a b c cout gnd s vdd
xi1 net1 c net4 gnd s vdd HA
xi0 a b net2 gnd net1 vdd HA
xi2 net4 net2 gnd vdd cout OR2
.ends FA
** End of subcircuit definition.

** Library name: trail
** Cell name: 4BIT_ADD
** View name: schematic
.subckt trail_4BIT_ADD_schematic a0 a1 a2 a3 b0 b1 b2 b3 cout gnd s0 s1 s2 s3 vdd
xi0 a0 b0 net2 gnd s0 vdd HA
xi3 a3 b3 net3 cout gnd s3 vdd FA
xi2 a2 b2 net1 net3 gnd s2 vdd FA
xi1 a1 b1 net2 net1 gnd s1 vdd FA
.ends trail_4BIT_ADD_schematic
** End of subcircuit definition.

** Library name: trail
** Cell name: OR
** View name: schematic
.subckt OR a b c gnd vdd y
xm6 y net3 vdd vdd pch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 net3 c net1 vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net1 b net2 vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net2 a vdd vdd pch_lvt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm7 y net3 gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 net3 c gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 net3 b gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net3 a gnd gnd nch_lvt_mac l=16e-9 nfin=1 w=10e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends OR
** End of subcircuit definition.

** Library name: trail
** Cell name: COMBO
** View name: schematic
xi0 net12 net13 net14 net15 x100 x110 x120 x130 net6 gnd net5 net4 net3 net2 vdd trail_4BIT_ADD_schematic
xi3 net10 net9 net8 net7 net5 net4 net3 net2 net24 gnd z0 z1 z2 z3 vdd trail_4BIT_ADD_schematic
xi1 x200 x210 x220 x230 x300 x310 x320 x330 net11 gnd net10 net9 net8 net7 vdd trail_4BIT_ADD_schematic
xi4 net6 net11 net24 gnd vdd f OR
xi20 x33 w3 gnd vdd x330 AND
xi19 x32 w3 gnd vdd x320 AND
xi18 x31 w3 gnd vdd x310 AND
xi17 x30 w3 gnd vdd x300 AND
xi16 x13 w1 gnd vdd x130 AND
xi15 x12 w1 gnd vdd x120 AND
xi14 x11 w1 gnd vdd x110 AND
xi13 x10 w1 gnd vdd x100 AND
xi12 x23 w2 gnd vdd x230 AND
xi11 x22 w2 gnd vdd x220 AND
xi10 x21 w2 gnd vdd x210 AND
xi9 x20 w2 gnd vdd x200 AND
xi8 x03 w0 gnd vdd net15 AND
xi7 x02 w0 gnd vdd net14 AND
xi6 x01 w0 gnd vdd net13 AND
xi5 x00 w0 gnd vdd net12 AND
.END

