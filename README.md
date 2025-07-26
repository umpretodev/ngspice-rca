# 🧮 ngspice-rca 

Desenvolvimento de um `Ripple Carry Adder` utilizando **NGSPICE**, como trabalho da disciplina de Sistemas Distribuídos.

<br>

<p align="center">
<img width="482" height="293" alt="Screenshot from 2025-07-25 22-49-26" src="https://github.com/user-attachments/assets/c7629987-d2cd-4ae4-b0d9-ab0d97f55750"/>

<br>
<br>


## 🧩 Subckts (subcircuitos) 
Para desenvolver o RCA utilizamos .subckt do ngspice, componentizando os gates para o RCA (NOT, XOR, AND, OR) 

<br>


#### NOT 
Desenvolvimento do inversor. Abaixo temos a `porta lógica`, `layout cmos` e `gráfico do teste da tabela verdade do ngspice`, respectivamente:

<p align="center">

<img width="432" height="114" alt="image" src="https://github.com/user-attachments/assets/1cedad68-9cf7-4512-988c-89407e57eb4e" />
</p>
<br>


<p align="center">
<img width="409" height="569" alt="image" src="https://github.com/user-attachments/assets/bda43d0f-f06f-4f76-a734-dd7dd2019e1c" />
</p>
<br>

<p align="center">
<img width="607" height="506" alt="image" src="https://github.com/user-attachments/assets/09f33b34-923e-4743-8e90-dfee3397590f" />
</p>

<br>
<br>


## 📁 Arquitetura do Projeto

``` text
📁 src
├── 📁 includes
│   └── 📝 32nm_HP.pm  # Include das tecnologias
│  
├── 📁 sources
│   └── 📝 source.pm  # lib das fontes
│
├── 📁 subckts
│   └── 📝 AND2_SUBCKT.pm   # subcircuito da AND
│   └── 📝 NOT_SUBCKT.pm    # subcircuito da NOT
│   └── 📝 OR2_SUBCKT.pm    # subcircuito da OR
│   └── 📝 XOR2_SUBCKT.pm   # subcircuito da XOR
└── 📝 main.pm   # arquivo da simulação
```

<br>
<br>


## 🚀 Executar o projeto
### Ubuntu
Para executar o projeto é necessário baixar zip do projeto, depois executar o seguinte comado no diretório raiz do projeto: 
```bash
ngspice ./main.pm
```

### Windows
Abra o `ngspice.exe` e executar os seguinte comando no ngspice no diretório raiz do projeto: 

```
source main/main.pm
```


