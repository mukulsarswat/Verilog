

# 🔁 SR Flip-Flop (Verilog)

A clean and modular implementation of an SR (Set-Reset) flip-flop using Verilog, complete with a simulation-ready testbench and waveform dumping. Designed for learners, interview prep, and showcasing digital design skills.

---

## 📘 Overview

This project demonstrates the behavior of a clocked SR flip-flop:
- ✅ **Set (S=1, R=0)** → Output Q = 1
- ✅ **Reset (S=0, R=1)** → Output Q = 0
- ✅ **No Change (S=0, R=0)** → Output retains previous state
- ⚠️ **Invalid (S=1, R=1)** → Output Q = unknown (`x`)

---

## 🧠 Educational Highlights

- 🧩 Beginner-friendly logic with case-based branching
- 🧪 Simulation-ready with waveform dumping (`.vcd`)
- 📊 Visual debugging via GTKWave on [EDA Playground](https://www.edaplayground.com/)
- 🎯 Recruiter appeal: modular design, annotated testbench, and clean documentation

---

## 📂 File Structure

```bash
├── SR_flipflop.v        # SR flip-flop module
├── SR_flipflop_tb.v     # Testbench with clock and stimulus
└── README.md            # You're here!
```

---

## 🚀 How to Simulate

1. Paste both `.v` files into [EDA Playground](https://www.edaplayground.com/)
2. Select **Verilog/SystemVerilog** and a simulator like **Icarus Verilog**
3. Run the simulation and open the waveform viewer
4. Observe Q and Q̅ transitions across clock edges

---

## 🔍 Waveform Preview

> [WaveForm ](https://photos.app.goo.gl/CJs3AnkDLP4YunNT7) _  
Shows transitions for Set, Reset, Hold, and Invalid states.

---


## 📌 Use Cases

- 📚 Digital logic coursework
- 💼 Portfolio projects for interviews
- 🧪 Simulation practice with GTKWave
- 🧠 Concept reinforcement for flip-flop behavior
