* OR2 GATE
* --------
.include "./NOT_SUBCKT.pm"


.SUBCKT OR2_SUBCKT a b out vdd gnd

Mpa net     a   vdd vdd PMOS W=70n L=32n
Mpb nor_out b   net vdd PMOS W=70n L=32n

Mna gnd a nor_out gnd NMOS W=105n L=32n
Mnb gnd b nor_out gnd NMOS W=105n L=32n


X_NOT nor_out out vdd gnd NOT_SUBCKT 

.ENDS OR2_SUBCKT