# 4-to-1 Multiplexer using Verilog HDL

![Verilog](https://img.shields.io/badge/HDL-Verilog-blue)
![Simulation](https://img.shields.io/badge/Simulation-Passed-brightgreen)
![Digital Logic](https://img.shields.io/badge/Digital%20Logic-Multiplexer-orange)

## 📌 Overview

This project implements a **4-to-1 Multiplexer (MUX)** using **Verilog HDL**.

A multiplexer is a combinational digital circuit that selects one input from multiple input signals and forwards the selected input to a single output.

A **4-to-1 Multiplexer** has:

* **4 data inputs:** `I0`, `I1`, `I2`, `I3`
* **2 select inputs:** `S1`, `S0`
* **1 output:** `Y`

The two select lines determine which input is connected to the output.

## ⚙️ Working Principle

The operation of the multiplexer is:

```text
S1 S0    Selected Input
-----------------------
0  0     I0
0  1     I1
1  0     I2
1  1     I3
```

For example, when:

```text
S1 = 1
S0 = 0
```

the multiplexer selects `I2`, so:

```text
Y = I2
```

## 🔢 Truth Table

| S1 | S0 | Selected Input | Output |
| -- | -- | -------------- | ------ |
| 0  | 0  | I0             | I0     |
| 0  | 1  | I1             | I1     |
| 1  | 0  | I2             | I2     |
| 1  | 1  | I3             | I3     |

## ⚙️ Logic Equation

The Boolean expression for the 4-to-1 Multiplexer is:

```text
Y = S1'S0'I0 + S1'S0I1 + S1S0'I2 + S1S0I3
```

The corresponding Verilog implementation is:

```verilog
assign Y = (~S1 & ~S0 & I0) |
           (~S1 &  S0 & I1) |
           ( S1 & ~S0 & I2) |
           ( S1 &  S0 & I3);
```

## 📂 Project Structure

```text
4-to-1-multiplexer/
│
├── mux_4to1.v
├── mux_4to1_tb.v
└── README.md
```

### Files Description

#### `mux_4to1.v`

Contains the RTL implementation of the 4-to-1 Multiplexer.

#### `mux_4to1_tb.v`

Contains the testbench used to verify all four select combinations.

#### `README.md`

Contains the project documentation, truth table, simulation output, and instructions.

## 🧪 Testbench

The testbench uses the following input values:

```text
I0 = 1
I1 = 0
I2 = 1
I3 = 0
```

It then tests all four possible select combinations:

```text
S1 S0 = 00 → Y = I0
S1 S0 = 01 → Y = I1
S1 S0 = 10 → Y = I2
S1 S0 = 11 → Y = I3
```

The Verilog `$display` statement is used to display the simulation results.

## 📊 Simulation Output

```text
================================================
             4-TO-1 MUX TESTBENCH
================================================
Time    S1      S0      I0      I1      I2      I3      Y
------------------------------------------------
10      0       0       1       0       1       0       1
20      0       1       1       0       1       0       0
30      1       0       1       0       1       0       1
40      1       1       1       0       1       0       0
------------------------------------------------
Simulation completed successfully.
================================================
```

## ▶️ How to Run the Simulation

### Using Icarus Verilog

Compile the Verilog design and testbench:

```bash
iverilog -o mux_sim mux_4to1.v mux_4to1_tb.v
```

Run the simulation:

```bash
vvp mux_sim
```

The simulation output will be displayed in the terminal.

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* ModelSim / QuestaSim
* Xilinx Vivado
* Git
* GitHub

## 🎯 Learning Objectives

This project demonstrates:

* Verilog HDL fundamentals
* Combinational circuit design
* Multiplexer operation
* Boolean expressions
* AND, OR, and NOT operations
* Select-line control
* RTL design
* Module instantiation
* Testbench development
* Simulation and verification

## 💡 Applications

Multiplexers are commonly used in:

* Data routing
* Digital communication systems
* CPU datapaths
* ALUs
* Control units
* Memory systems
* Signal selection
* Bus control
* Digital switching circuits

## 🚀 Future Improvements

This project can be extended to:

* 2-to-1 Multiplexer
* 8-to-1 Multiplexer
* 16-to-1 Multiplexer
* Parameterized N-to-1 Multiplexer
* Multiplexer using `case` statement
* Multiplexer using `if-else`
* 4-bit and 8-bit multiplexers
* Multiplexer-based ALU

## 📜 License

This project is created for educational and learning purposes.

## 👨‍💻 Author

**Your Name**

GitHub: `https://github.com/your-username`

---

⭐ If you found this project useful, consider giving the repository a star!
