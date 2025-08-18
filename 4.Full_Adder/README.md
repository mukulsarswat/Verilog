# Full Adder

A **Full Adder** is a fundamental digital circuit that performs the addition of three single-bit binary numbers: two significant bits and a carry-in from a previous stage. It produces a sum and a carry-out output.

## Overview

- **Inputs:** A, B, Cin (all single-bit binary numbers)
- **Outputs:** Sum, Cout

The Full Adder accounts for carry-in from previous stages, making it suitable for multi-bit binary addition by cascading several full adders.

## Logic Diagram

[View Logic Diagram](https://electronics.stackexchange.com/questions/146825/design-of-a-basic-full-adder)

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|-------|
| 0 | 0 |  0  |  0  |   0   |
| 0 | 0 |  1  |  1  |   0   |
| 0 | 1 |  0  |  1  |   0   |
| 0 | 1 |  1  |  0  |   1   |
| 1 | 0 |  0  |  1  |   0   |
| 1 | 0 |  1  |  0  |   1   |
| 1 | 1 |  0  |  0  |   1   |
| 1 | 1 |  1  |  1  |   1   |

## Boolean Expressions

- **Sum** = A ⊕ B ⊕ Cin (XOR)
- **Cout** = (A · B) + (B · Cin) + (A · Cin)

## Applications

- Used in arithmetic logic units (ALUs)
- Essential for multi-bit binary addition (ripple-carry adders, etc.)
- Building block for more complex arithmetic circuits

## Verilog Code

[View Full_Adder.v](./Full_Adder.v)
<br>
[View Full Adder TestBench](./Full_adder_tb.v)

## Output :
[View Schematic Diagram](https://images.app.goo.gl/nio6ecBkcp78feiF9)
<br>
[View Output Waveform](https://photos.app.goo.gl/rS5VYyqAEVH22kot7)

## References

- [Wikipedia: Full Adder](https://en.wikipedia.org/wiki/Adder_(electronics)#Full_adder)
- Digital Design textbooks (https://ia800803.us.archive.org/12/items/DigitalLogicAndComputerDesignByM.MorrisMano2ndEdition/Digital%20Logic%20And%20Computer%20Design%20By%20M.%20Morris%20Mano%20%282nd%20Edition%29.pdf)
