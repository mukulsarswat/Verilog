# Verilog Practice on EDA Playground

This repository contains my practice work for learning and exploring Verilog using [EDA Playground](https://www.edaplayground.com/) and [HDLBits](https://hdlbits.01xz.net/wiki/Main_Page). Below is an index of the items included, each with a topic and serial number.

## Index of Items

| Sr. No. | Topic                          | Description                          |
|---------|--------------------------------|--------------------------------------|
| 0       | Getting Started                | Setting up and using EDA Playground  |
| 1       | Basic Gates                    | AND, OR, NOT, NAND, NOR, XOR, XNOR   |
| 3       | Half Adder                     | Half adder(AND and XOR gate used     |
| 4       | Full Adder                     | Full adder(AND,OR and XOR gate used  |
| 5       | Half & Full Subtractor         | Half & Full Subtractor(AND,OR and XOR gate used     |
| 6       | n bit Ripple carry Adder       | Used Full Adder and Learn Module Instantiation In Verilog    |
| 7       | 2:1,4:1 and 8:1 MUX      | How to use 2:1 for 4:1 and 2:1 4:1 together for 8:1    |
| 8       | Code Converter     | Binary to Gray , Gray to Binary    |
| 9       | D-Flip FLop     | Using Gate and Behavioral modelling   |
| 10       | T-Flip FLop     | Using Gate and Behavioral modelling   |
| 11      | JK-Flip FLop     | Using Gate and Behavioral modelling   |
| 12      | SR-Flip FLop     | Using Gate and Behavioral modelling   |




---

## 1. Getting Started

- Introduction to EDA Playground
- Creating your first Verilog file
- Running simulations <br>
- For simulation i used following : <br>
        - Selected Verilog/System Verilog on Design and TestBench in LANGUAGE & LIBRARIES dropdown. <br>
        - Selected Aldec Riviera Pro 2023.04 which automatically manage other things . <br>
        - Selected EPWave after Run (if you want to  see wavefoerm ). <br>
- You can refer to my account [EDA Profile](https://edaplayground.com/playgrounds/user/897650)  and [HDLBits Profile](https://hdlbits.01xz.net/wiki/Special:VlgStats/5270771120A5FEFC)
## 2. [Basic Gates](./1.Logic_Gates/)

- Implementation of basic gates in Verilog
- Example codes for [AND](https://en.wikipedia.org/wiki/AND_gate), [OR](https://en.wikipedia.org/wiki/OR_gate), NOT, NAND, NOR, XOR, XNOR,
- For All Gates refer [Logical Gates](https://www.geeksforgeeks.org/physics/logic-gates/)

## 3.[Half_Adder](./3.Practice)

- Implementation of Half Adder using AND and XOR gate.
- Example code are in 3.Practice here.
- For more details on Half Adder you can refer to [GFG Link](https://www.geeksforgeeks.org/digital-logic/half-adder-in-digital-logic/)

## 4.[Full_Adder](./4.Full_Adder)

- Implementation of Full Adder using AND,OR and XOR gate.
- Example code are in 4.Full_Adder here.
- For more details on Full Adder you can refer to [GFG Link](https://www.geeksforgeeks.org/digital-logic/full-adder-in-digital-logic/)

## 5.[Half_&_Full_Subtractor](https://github.com/mukulsarswat/Verilog/tree/ae256f9eb31d97699394c55ce9db4f024847cc08/5.Half%20Subtractor%20%26%26%20Full%20Subtractor)

- Implementation of Half and Full Subtractor using AND,OR and XOR gate.
- Example code are in 5.Half Subtractor && Full Subtractor here.
- For more details on Full Subtractor you can refer to [GFG Link](https://www.geeksforgeeks.org/digital-logic/full-subtractor-in-digital-logic/)   and for Half Subtractor [GFG Link](https://www.geeksforgeeks.org/digital-logic/half-subtractor-in-digital-logic/)

## 6.[n bit Ripple Carry Adder](./6.n_Bit_Ripple_Carry_Adder)
- Implementation of 4-bit Ripple Carry adder using 4-Full Adder.
- <strong>New Learning</strong> How to Module Instantiation In Verilog and how we need to tackle things in case of EDA PLAYGROUND where get know about the $dumpvars. 
- For more info on Ripple Carry Adder <i>[click here](https://www.sciencedirect.com/topics/computer-science/ripple-carry-adder)</i> and for Module Instantiation  <i>[click here](https://circuitfever.com/module-instantiation-in-verilog)</i>

## 7.[Multiplexers](./7.MUX)
- Implementation of 2:1 ,4:1 using 2:1 and without using 2:1 ,8:1 using 4:1 and 2:1.
- <strong>New Learning</strong> How to Module Instantiation In Verilog and how we need to tackle things in case of EDA PLAYGROUND where get know about the $dumpvars. I used it as $dumpvars(1) for 2:1 and 4:1 and for 8:1.
- For more info on Multiplexer <i>[click here](https://www.electronics-tutorials.ws/combination/comb_2.html)</i> 

## 8.[Code Converters](./8.Code_Converter)
- Implementation of **Gray to Binary Converter** using simplified Boolean logic:
  - B2 = G2  
  - B1 = G1 ⊕ G2  
  - B0 = G0 ⊕ G1 ⊕ G2  
- Implementation of **Binary to Gray Converter** using simplified Boolean logic:
  - G2 = B2  
  - G1 = B1 ⊕ B2  
  - G0 = B0 ⊕ B1 
- <strong>New Learning</strong> Explored how to derive conversion logic using Karnaugh Maps and Boolean simplification. Practiced **module instantiation** in Verilog for clean hierarchy and reusability.
- Tackled simulation setup in **EDA PLAYGROUND**, especially for waveform visibility:
  - Used `$dumpvars(1)` for compact modules and `$dumpvars(0)` for top-level testbenches.
  - Ensured `$dumpfile("gray_to_binary.vcd")` was declared before simulation begins.
- For more info on Gray Code and Binary Conversion <i>[click here](https://www.tutorialspoint.com/digital-electronics/gray-code-to-binary-converter.htm)</i>

## 9.[D Flip Flop](./9.D_FlipFlop)
- A D flip-flop stores the input value (`D`) on a clock edge and holds it stable until the next trigger.  
- It’s edge-sensitive, meaning it reacts only on rising or falling clock transitions, making it ideal for synchronized data storage.  
- Widely used in registers, counters, and memory elements, it forms the backbone of sequential digital circuits.
- For more info on Modelling in Verilog <i>[click here](https://blog.eduplusnow.com/blog/verilog-hdl-exploring-different-modelling-styles/)</i> 
Here you go, Mukul—matching the style and tone of your D flip-flop entry, here are polished entries for **T**, **SR**, and **JK** flip-flops. Each one is recruiter-friendly and educationally sharp:

---

## 10. [T Flip Flop](./10.T_FlipFlop)
- A T (Toggle) flip-flop changes its output state on every clock edge when the input `T` is high (`1`).  
- When `T = 0`, it holds its previous state, making it ideal for frequency division and binary counting.  
- It’s derived from the JK flip-flop by tying both inputs together (`J = K = T`).  
- Commonly used in ripple counters and clock dividers for sequential timing control.  
- For more info on Modelling in Verilog <i>[click here](https://blog.eduplusnow.com/blog/verilog-hdl-exploring-different-modelling-styles/)</i>

---

## 11. [JK Flip Flop](./11.JK_FlipFlop)
- A JK flip-flop is a versatile sequential element that resolves the invalid state of the SR flip-flop.  
- When `J = 1, K = 1`, it toggles the output; otherwise, it behaves like an SR flip-flop.  
- It’s edge-triggered and highly flexible, making it suitable for counters, shift registers, and control units.  
- Often used in synchronous systems where controlled toggling and state transitions are required.  
- For more info on Modelling in Verilog <i>[click here](https://blog.eduplusnow.com/blog/verilog-hdl-exploring-different-modelling-styles/)</i>

---

## 12. [SR Flip Flop](./12.SR_FlipFlop)
- An SR (Set-Reset) flip-flop sets or resets its output based on the inputs `S` and `R` during a clock edge.  
- `S = 1, R = 0` sets the output; `S = 0, R = 1` resets it; `S = R = 0` holds the state; `S = R = 1` is invalid.  
- It’s one of the simplest memory elements, useful for basic control logic and latching mechanisms.  
- Often used in debouncing circuits and simple state machines.  
- For more info on Modelling in Verilog <i>[click here](https://blog.eduplusnow.com/blog/verilog-hdl-exploring-different-modelling-styles/)</i>


---
##  Useful Resources

- [EDA Playground](https://www.edaplayground.com/)
- [Verilog Tutorial (GeeksforGeeks)](https://www.geeksforgeeks.org/verilog/)
- [ASIC World Verilog Examples](https://www.asic-world.com/verilog/index.html)

---

> _Feel free to add more topics or update this README as you progress in your Verilog learning journey!_
























