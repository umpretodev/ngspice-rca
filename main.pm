* SIMULATION
* ----------


* GATES 
.include "./src/includes/32nm_HP.pm"
.include "./src/gates/not.pm"

* Fontes
Vvdd vdd gnd 0.9
Va a 0 PULSE(0 0.9 0n 0.1n 0.1n 5n 10n)

* Instância da porta NOT
X1 a out vdd gnd NOT

* Controle da simulação
.tran 0.01n 20n
.control
	run
	plot a out + 2
.endc
.end