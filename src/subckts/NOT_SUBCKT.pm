* NOT GATE
* --------
* Interface: { "gate": NOT,  "input": IN, "output": OUT, "source": VDD }

.SUBCKT NOT_SUBCKT in out vdd gnd

Mp out in vdd vdd PMOS W=105n L=32n
Mn out in gnd gnd NMOS W=70n  L=32n

.ENDS NOT_SUBCKT