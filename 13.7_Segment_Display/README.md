# 🔢 7-Segment Display Decoder (Verilog)

A modular Verilog implementation of a **hex-to-7-segment display decoder**, designed to convert 4-bit hexadecimal inputs (`0–F`) into corresponding 7-segment outputs. This project is simulation-ready, beginner-accessible, and ideal for showcasing digital design fundamentals.

---

## 📘 Overview

The 7-segment display is a widely used output device in embedded systems and digital electronics. This decoder maps each 4-bit hex input to a 7-bit output that lights up the appropriate segments (`a–g`) to represent digits and characters.

- 🎯 **Input**: 4-bit hex (`0000` to `1111`)
- 💡 **Output**: 7-bit segment control (`a–g`)
- 🧠 **Application**: Digital clocks, counters, calculators, embedded displays

---

## 📂 File Structure

```bash
├── hex_to_7_segment.v      # Decoder module
├── hex_to_7_segment_tb.v   # Testbench with waveform dumping
└── README.md               # You're here!
```

---

## 🔧 Features

- ✅ Covers all hex inputs (`0–F`)
- 🧪 Includes testbench with `$dumpfile` and `$dumpvars`
- 📊 Compatible with GTKWave for waveform visualization
- 🧩 Beginner-friendly logic with clean case statements
- 🎓 Great for interview prep and digital logic coursework

---

## 🚀 How to Simulate

1. Paste both `.v` files into [EDA Playground](https://www.edaplayground.com/)
2. Select **Verilog/SystemVerilog** and a simulator like **Icarus Verilog**
3. Run the simulation and open the waveform viewer
4. Observe segment outputs (`seg[6:0]`) for each hex input

---

## 📊 Waveform Preview

> _[Click Here to See Output Screenshot](https://photos.app.goo.gl/BkXt84QJTygREtNZ8)_  
Shows segment transitions for each hex input from `0` to `F`.

---

## 📌 Use Cases

- 🧮 Digital counters and clocks
- 🧠 Concept reinforcement for combinational logic
- 💼 Portfolio projects and interview demos
- 📚 Embedded systems and hardware labs
