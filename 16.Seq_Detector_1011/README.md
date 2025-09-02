# 🔍 Sequence Detector (1011) in Verilog

This project implements a **Mealy-style sequence detector** for the binary pattern `1011`. It detects the sequence in a serial bit stream and asserts a `detected` output when the pattern is found.

---

## 🧠 Concept

A **sequence detector** is a finite state machine (FSM) that monitors input bits and identifies a specific pattern. This design uses:

- **Mealy FSM**: Output depends on both current state and input
- **5 states**: S0 to S4, representing progress through the sequence
- **Immediate detection**: Output goes high as soon as `1011` is completed

---

## 📂 Files

| File                   | Description                          |
|------------------------|--------------------------------------|
| `1011_seq.v`  | FSM design for detecting `1011`      |
| `1011_seq_tb.v`| Testbench with waveform dumping     |
| `README.md`            | Documentation and simulation guide   |

---

## 🔗 Quick Access

- ▶️ **[Simulate on EDA Playground](https://edaplayground.com/x/ZtsY)**  

- 📄 **[Design Code](./1011_seq.v)**  
- 🧪 **[Testbench Code](./1011_seq_tb.v)**  
- 📈 **[Waveform Viewer](https://edaplayground.com/x/abc456#waveform)**  

---

## 🧪 How to Simulate

1. Open the EDA Playground link above.
2. Select **Icarus Verilog** as the simulator.
3. Enable **VCD waveform viewer**.
4. Click **Run** to simulate and inspect detection pulses.

---

## 📊 Sample Input & Output

| Time | Input Bit | Detected Output |
|------|-----------|------------------|
| 10ns | 1         | 0                |
| 20ns | 0         | 0                |
| 30ns | 1         | 0                |
| 40ns | 1         | 1 ✅             |

---

## 📘 Educational Highlights

- ✅ FSM design using enumerated states
- ✅ Mealy machine logic with immediate output
- ✅ Waveform-based verification

---

