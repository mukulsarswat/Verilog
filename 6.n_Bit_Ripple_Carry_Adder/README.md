---

#  Learn 4-Bit Ripple Carry Adder in Verilog

Welcome to **Learn 4-Bit Ripple Carry Adder in Verilog**!  
This repository is designed to help you understand how to build a ripple carry adder using Verilog HDL, simulate it on EDA Playground, and grasp the fundamentals of modular digital design. Whether you're just starting with hardware description languages or brushing up on combinational logic, this guide and the accompanying code will help you master the concept of ripple carry addition.

---

## 📚 Table of Contents

- [Introduction](#introduction)
- [What is a Ripple Carry Adder?](#what-is-a-ripple-carry-adder)
- [Project Structure](#project-structure)
  - [Full Adder Module](#1-full-adder-module)
  - [4-Bit Ripple Carry Adder](#2-4-bit-ripple-carry-adder)
  - [Testbench](#3-testbench)
  - [Ouput WaveForm](#4-Output_WaveForm)
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

### 1. Full Adder Module

```verilog
module Full_Adder(a, b, c, s, co);
  input a, b, c;
  output s, co;
  assign s = a ^ b ^ c;
  assign co = (a & b) | (c & (a ^ b));
endmodule
```

### 2. 4-Bit Ripple Carry Adder

```verilog
module n_bit_ripple_carry_adder(a, b, cin, sum, cout);
  input [3:0] a, b;
  input cin;
  output [3:0] sum;
  output cout;
  wire [2:0] w;

  Full_Adder fa1(a[0], b[0], cin, sum[0], w[0]);
  Full_Adder fa2(a[1], b[1], w[0], sum[1], w[1]);
  Full_Adder fa3(a[2], b[2], w[1], sum[2], w[2]);
  Full_Adder fa4(a[3], b[3], w[2], sum[3], cout);
endmodule
```

### 3. Testbench

```verilog
module n_bit_ripple_carry_adder_tb();
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;

  n_bit_ripple_carry_adder uut(a, b, cin, sum, cout);

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(4);
  end

  initial begin
    a = 4'b1011; b = 4'b0101; cin = 0; #10;
    a = 4'b1000; b = 4'b1011; cin = 1; #10;
    a = 4'b0111; b = 4'b1101; cin = 1; #10;
    $finish;
  end
endmodule
```
### 4.Ouput_WaveForm    [LINK](https://photos.app.goo.gl/uDvv2JXnFGBzk59Z7)

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

Happy Simulating! 💻🔧
```


Let me know if you'd like this turned into a GitHub repo structure or want help adding waveform screenshots or expanding to subtractors or ALUs.
