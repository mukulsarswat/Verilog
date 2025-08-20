
# Learn Multiplexers (2:1, 4:1, 8:1) in Verilog

Welcome to **Learn Multiplexers in Verilog**!  
This repository is designed to help you understand how to build and simulate **2:1**, **4:1**, and **8:1 multiplexers** using Verilog HDL. Whether you're new to digital logic or refining your understanding of selection circuits, this guide and the accompanying code will walk you through the fundamentals of MUX design and simulation.

---

## 📚 Table of Contents
- [Introduction](#-introduction)
- [What is a Multiplexer?](#-what-is-a-multiplexer)
- [Project Structure](#-project-structure)
- [Key Learnings](#-key-learnings)
- [Things to Check on EDA Playground](#-things-to-check-on-eda-playground)
- [Sample Simulation Output](#-sample-simulation-output)
- [Resources](#-resources)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🧠 Introduction
A **Multiplexer (MUX)** is a combinational circuit that selects one of several input signals and forwards it to a single output line.  
In Verilog, MUXes are excellent examples of conditional logic and are widely used in control units, data routing, and processor design.

---

## 🔍 What is a Multiplexer?
A **MUX** uses select lines to choose which input to pass to the output.  
- A **2:1 MUX** has 2 inputs, 1 select line, and 1 output.  
- A **4:1 MUX** has 4 inputs, 2 select lines, and 1 output.  
- An **8:1 MUX** has 8 inputs, 3 select lines, and 1 output.  

Each design demonstrates how binary select lines control data flow.

---

## 🧱 Project Structure
1. [2:1 Multiplexer](./mux_2to1.v)  
2. [4:1 Multiplexer](./mux_4to1.v)  
3. [8:1 Multiplexer](./mux_8to1.v)  
4. [TestBench](./mux_tb.v)  
5. [Output WaveForm](https://photos.app.goo.gl/your_mux_waveform_link)  

---

## 🧠 Key Learnings
1. How to implement **conditional logic** using `assign` and `case` statements.  
2. How to scale MUX designs from 2:1 to 8:1 using modular and hierarchical approaches.  
3. How to simulate Verilog code using **EDA Playground**.  
4. How to write a **testbench** to verify MUX behavior across all select line combinations.  
5. How to visualize signal selection using waveform viewers.

---

## 🧪 Things to Check on EDA Playground
- ✅ Select **Aldec Riviera Pro 2023.04** or **Synopsys VCS** as the simulator.  
- ✅ Include all modules in the left panel: MUX modules and Testbench.  
- ✅ Set `mux_tb` as the **top-level module**.  
- ✅ Use correct **select line widths** (`wire [2:0] sel;` for 8:1 MUX).  
- ✅ Use `$dumpfile` and `$dumpvars` for waveform generation.  
- ✅ Confirm output using **console logs** or **waveform viewer**.

---

## 📈 Sample Simulation Output

- Time: 10 ns | sel = 0 | out = in0  
- Time: 20 ns | sel = 1 | out = in1  
- Time: 30 ns | sel = 2 | out = in2  
- Time: 40 ns | sel = 3 | out = in3  
- Time: 50 ns | sel = 4 | out = in4  
- Time: 60 ns | sel = 5 | out = in5  
- Time: 70 ns | sel = 6 | out = in6  
- Time: 80 ns | sel = 7 | out = in7  

---

## 📚 Resources
- [EDA Playground](https://www.edaplayground.com)  
- [Verilog Tutorial – GeeksforGeeks](https://www.geeksforgeeks.org/verilog/)  
- [ASIC World – Verilog MUX Examples](http://asic-world.com/verilog/verilog_mux.html)  

---

## 🤝 Contributing
Contributions are welcome! Feel free to add new MUX variants (e.g., 16:1), improve test coverage, or optimize logic using behavioral modeling.

---

## 📄 License
MIT License  

Copyright (c) 2025 Mukul Sharma  

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:  

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.  

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER  
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  
SOFTWARE.  

---

Happy Simulating! 🎛️💡

Would you like me to help you write the Verilog modules and testbench next?
