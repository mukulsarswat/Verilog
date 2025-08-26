## 🔁 JK Flip-Flop 
A behavioral model of a JK flip-flop with a comprehensive testbench, designed for simulation and waveform analysis on platforms like EDA Playground.

### 📘 Overview  
This project implements a JK flip-flop using Verilog HDL. The flip-flop responds to positive clock edges and supports asynchronous reset. A testbench is included to validate all input combinations and visualize waveform transitions.

### ⚙️ Features  
- Behavioral modeling using `always @(posedge clk or posedge reset)`
- Asynchronous reset functionality  
- Full test coverage of JK input combinations  
- Waveform generation via `$dumpfile` and `$dumpvars`  
- Clock generation with 10ns period  
- Beginner-friendly comments and modular structure

### 🧠 Logic Table

| J | K | Output (Q) Behavior |
|---|---|---------------------|
| 0 | 0 | No change           |
| 0 | 1 | Reset (Q = 0)       |
| 1 | 0 | Set (Q = 1)         |
| 1 | 1 | Toggle              |

### 📂 File Structure [Design](./Jk_flip_flop.v)  and [TestBench](./Jk_flip_flop_tb.v).

```bash
JK_FlipFlop/
├── Jk_flip_flop.v       # JK flip-flop module
├── Jk_flip_flop_tb.v    # Testbench with waveform dump
└── README.md            # Project documentation
```
### 📈 Waveform Highlights : [Output Waveform](https://photos.app.goo.gl/zKqcnYyuZYJ2JGtk7)    
- Clock transitions every 10ns  
- Reset initializes Q to 0  
- Toggle behavior clearly visible when J=K=1  
- All transitions annotated for educational clarity
