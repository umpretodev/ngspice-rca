* XOR2 GATE
* --------
.include "./NOT_SUBCKT.pm"


.SUBCKT XOR2_SUBCKT a b out vdd gnd


* ---------------------
* A_NEG return (a_neg)
* --------------------
X_NOT_A a a_neg vdd gnd NOT_SUBCKT 

* ---------------------
* B_NEG return (b_neg)
* --------------------
X_NOT_B b b_neg vdd gnd NOT_SUBCKT 


Mpa 	    net3	 	    a	    vdd 	    vdd 	PMOS 	w=105n	 L=32n
Mpb_neg 	xnor_out	 	b_neg	net3 	    vdd 	PMOS 	w=105n	 L=32n
Mpa_neg 	net3	 	 	a_neg   vdd 	    vdd     PMOS 	w=105n	 L=32n
Mpb 	    xnor_out	 	b	    net3 		vdd 	PMOS 	w=105n	 L=32n


Mna_neg 	net1 	a_neg 	xnor_out 		gnd 	NMOS 	w=70n 	L=32n
Mnb 	    gnd 	b 		net1 		    gnd 	NMOS 	w=70n 	L=32n
Mna 	    net2	a 		xnor_out 		gnd 	NMOS 	w=70n 	L=32n
Mnb_neg 	gnd 	b_neg 	    net2 		gnd 	NMOS 	w=70n 	L=32n


X_NOT xnor_out out vdd gnd NOT_SUBCKT 

.ENDS XOR2_SUBCKT

