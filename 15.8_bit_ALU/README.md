# 🔢 8-bit ALU in Verilog

This project implements a simple **8-bit Arithmetic Logic Unit (ALU)** using Verilog. It performs basic arithmetic and logic operations and is designed for simulation on [EDA Playground](https://www.edaplayground.com/), making it ideal for learners and recruiters reviewing digital design skills.

---

## 🧠 Basic Concept

An ALU (Arithmetic Logic Unit) is a core component of any processor. It performs operations like:

- **Arithmetic**: Addition, Subtraction
- **Logic**: AND, OR, XOR
- **Shifts**: Logical left and right
- **Comparison**: Set-on-less-than (SLT)

This ALU takes two 8-bit inputs (`A` and `B`) and a 3-bit control signal (`ALU_Sel`) to select the operation. It outputs an 8-bit result (`ALU_Out`) and a `Zero` flag to indicate if the result is zero.

---

## 📂 Project Files

| File            | Description                          |
|-----------------|--------------------------------------|
| `8_bit_alu.v`     | ALU module with 8 operations         |
| `8_bit_alu_tb.v`  | Testbench with waveform dumping      |
| `README.md`      | Documentation and usage instructions |

---

## 🔗 Quick Access

- ▶️ **[View & Simulate on EDA Playground](https://edaplayground.com/x/fZBb)**  


- 📄 **[ALU Design Code](./8_bit_alu.v)**  
- 🧪 **[Testbench Code](./8_bit_alu_tb.v)**  
- 📈 **[Waveform Output Viewer](https://photos.app.goo.gl/BmoseXLpSXreo9rg8)**  

---

## 🧪 How to Simulate

1. Open the EDA Playground link above.
2. Select **Icarus Verilog** as the simulator.
3. Ensure **VCD waveform viewer** is enabled.
4. Click **Run** to simulate and view results.

---

## 📊 Sample Operations

| ALU_Sel | Operation        | Description         |
|---------|------------------|---------------------|
| `000`   | Addition          | `A + B`             |
| `001`   | Subtraction       | `A - B`             |
| `010`   | Bitwise AND       | `A & B`             |
| `011`   | Bitwise OR        | `A | B`             |
| `100`   | Bitwise XOR       | `A ^ B`             |
| `101`   | Logical Left Shift| `A << 1`            |
| `110`   | Logical Right Shift| `A >> 1`           |
| `111`   | Set-on-less-than  | `A < B ? 1 : 0`     |

---
