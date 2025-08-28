# 🔟 MOD-10 Counter (Verilog)

A modular Verilog implementation of a **MOD-10 (decade) counter**, designed to count from `0` to `9` and then reset. This project demonstrates synchronous counting logic using flip-flops and is ideal for digital design learners, interview prep, and embedded system applications.

---

## 📘 Overview

A MOD-10 counter cycles through 10 states (`0000` to `1001`) before resetting to `0000`. It’s widely used in:
- 🧮 Digital clocks
- 🔢 Frequency dividers
- 📟 Display drivers
- 🧠 Sequential logic training

This design uses synchronous logic with a clock input and reset signal to ensure predictable state transitions.

---

## 📂 File Structure

```bash
├── counter.v        # Counter module
├── counter_tb.v     # Testbench with waveform dumping
└── README.md              # You're here!
```

---

## 🔧 Features

- ✅ Counts from `0` to `9` in binary
- 🔁 Resets automatically after reaching `9`
- 🧪 Includes testbench with `$dumpfile` and `$dumpvars`
- ⏱️ Clock-driven synchronous design
- 📊 Compatible with GTKWave for waveform visualization

---

## 🚀 How to Simulate

1. Paste both `.v` files into [EDA Playground](https://www.edaplayground.com/)
2. Select **Verilog/SystemVerilog** and a simulator like **Icarus Verilog**
3. Run the simulation and open the waveform viewer
4. Observe the counter output (`count[3:0]`) cycling from `0000` to `1001`

---


## 📊 Waveform Preview

> _[Output Screenshot](https://photos.app.goo.gl/V7ST9u4k6KZarKEk9)_  
Shows binary count progression from `0` to `9`, followed by reset.

---

## 📌 Use Cases

- 🧮 Decimal counting systems
- 🧠 Sequential logic training
- 💼 Portfolio projects and interview demos
- 📚 Embedded systems and hardware labs
