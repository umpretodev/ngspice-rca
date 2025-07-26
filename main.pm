* SIMULATION
* ----------

* ------
* GATES 
* ------
.include "./src/includes/32nm_HP.pm"
.include "./src/subckts/NOT_SUBCKT.pm"
.include "./src/subckts/AND2_SUBCKT.pm"

* --------------------------
* SOURCE return Va(a), Vb(b)
* --------------------------
.include "./src/sources/source.pm"

* --------
* SETUP
* --------
*X_NOT a out vdd gnd NOT_SUBCKT
X_AND2 a b out vdd gnd AND2_SUBCKT


* -------------------
* SIMULATION CONTROL
* -------------------
.tran 0.001n 20n
.control
	set xbrushwidth=3
	set color0=white

	run
	plot a + 4 b + 2 out
.endc
.end
