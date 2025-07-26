* AND2 GATE
* --------
.include "./NOT_SUBCKT.pm"


.SUBCKT AND2_SUBCKT a b out vdd gnd

Mpa nand_out a vdd vdd PMOS W=105n L=32n
Mpb nand_out b vdd vdd PMOS W=105n L=32n

Mna nand_out a net gnd NMOS W=70n L=32n
Mnb net      b gnd gnd NMOS W=70n L=32n

X_NOT nand_out out vdd gnd NOT_SUBCKT 

.ENDS AND2_SUBCKT