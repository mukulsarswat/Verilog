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


##  Useful Resources

- [EDA Playground](https://www.edaplayground.com/)
- [Verilog Tutorial (GeeksforGeeks)](https://www.geeksforgeeks.org/verilog/)
- [ASIC World Verilog Examples](https://www.asic-world.com/verilog/index.html)

---

> _Feel free to add more topics or update this README as you progress in your Verilog learning journey!_



















