Thanks for pointing that out, Mukul! Here's the corrected version of your README with fully connected Table of Contents links, including the sub-sections under **Project Structure** so everything works smoothly when clicked:

---

# Learn 4-Bit Ripple Carry Adder in Verilog

Welcome to **Learn 4-Bit Ripple Carry Adder in Verilog**!  
This repository is designed to help you understand how to build a ripple carry adder using Verilog HDL, simulate it on EDA Playground, and grasp the fundamentals of modular digital design. Whether you're just starting with hardware description languages or brushing up on combinational logic, this guide and the accompanying code will help you master the concept of ripple carry addition.

---

## 📚 Table of Contents

- [Introduction](#introduction)
- [What is a Ripple Carry Adder?](#what-is-a-ripple-carry-adder)
- [Project Structure](#project-structure)
  - [Full Adder](#1-full-adder)
  - [4-bit Ripple Carry Adder](#2-4-bit-ripple-carry-adder)
  - [TestBench](#3-testbench)
  - [Output Waveform](#4-output-waveform)
- [Key Learnings](#key-learnings)
- [Things to Check on EDA Playground](#things-to-check-on-eda-playground)
- [Sample Simulation Output](#sample-simulation-output)
- [Resources](#resources)
- [Contributing](#contributing)
- [License](#license)

---

## 🧠 Introduction

Verilog is a hardware description language used to model digital systems. A **Ripple Carry Adder** is a simple yet powerful example of modular design in digital logic. It adds two binary numbers by chaining together multiple **Full Adders**, where each adder handles one bit and passes its carry to the next.

---

## 🔍 What is a Ripple Carry Adder?

A **Ripple Carry Adder** is a combinational circuit that adds two binary numbers and a carry-in. It consists of multiple **Full Adders** connected in series. Each full adder computes the sum and carry for its respective bit, and the carry "ripples" through the chain.

---

## 🧱 Project Structure

### 1. Full Adder  
🔗 [View Code](https://github.com/mukulsarswat/Verilog/tree/ad3de533bc07190df026fcbb2744c9cbed7bf84b/4.Full_Adder)

### 2. 4-bit Ripple Carry Adder  
🔗 [View Code](./n_Bit_Ripple_Carry_Adder.v)

### 3. TestBench  
🔗 [View Code](./n_Bit_Ripple_Carry_Adder_tb.v)

### 4. Output Waveform  
🔗 [View Screenshot](https://photos.app.goo.gl/uDvv2JXnFGBzk59Z7)

---

## 🧠 Key Learnings

1. How to define and instantiate a **Full Adder** module.  
2. How to connect multiple full adders using intermediate **carry wires**.  
3. How to simulate Verilog code using **EDA Playground**.  
4. How to write a **testbench** to verify digital logic.  
5. Importance of **modular design** in hardware development.

---

## 🧪 Things to Check on EDA Playground

- ✅ Select **Aldec Riviera Pro 2023.04** or **Synopsys VCS** as the simulator.  
- ✅ Include all modules in the left panel: Full Adder, Ripple Carry Adder, and Testbench.  
- ✅ Set `n_bit_ripple_carry_adder_tb` as the **top-level module**.  
- ✅ Use correct **wire declarations** (`wire [2:0] w;` instead of `wire W[2:0];`).  
- ✅ Use `$dumpfile` and `$dumpvars` for waveform generation.  
- ✅ Confirm output using **console logs** or **waveform viewer**.

---

## 📈 Sample Simulation Output

```
Time: 10 ns | a = 1011 | b = 0101 | cin = 0 | sum = 0000 | cout = 1
Time: 20 ns | a = 1000 | b = 1011 | cin = 1 | sum = 0010 | cout = 1
Time: 30 ns | a = 0111 | b = 1101 | cin = 1 | sum = 0101 | cout = 1
```

---

## 📚 Resources

- [EDA Playground](https://www.edaplayground.com)  
- [Verilog Tutorial – GeeksforGeeks](https://www.geeksforgeeks.org/verilog/)  
- [ASIC World – Verilog Examples](http://asic-world.com/verilog/verilog_one_day.html)

---

## 🤝 Contributing

Contributions are welcome! Feel free to submit improvements, add new test cases, or extend the adder to 8-bit or 16-bit.

---

## 📄 License

MIT License  
© 2025 Mukul Sharma

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

Happy Simulating! 💻🔧

---

Let me know if you'd like to add badges, repo structure, or even a GIF demo next. I can help you make this README shine like a silicon wafer under a microscope.
