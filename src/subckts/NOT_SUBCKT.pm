* NOT GATE
* --------
.SUBCKT NOT_SUBCKT in out vdd gnd

Mpa out in vdd vdd PMOS W=105n L=32n
Mna out in gnd gnd NMOS W=70n  L=32n

.ENDS NOT_SUBCKT