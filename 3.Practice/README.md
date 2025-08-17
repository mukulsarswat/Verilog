# Half Adder

A **Half Adder** is a fundamental digital circuit used to perform the addition of two single-bit binary numbers. It produces a sum and a carry output.

## Overview

- **Inputs:** A, B (single-bit binary numbers)
- **Outputs:** Sum, Carry

The Half Adder does not account for carry-in from previous stages, making it suitable for the least significant bit addition in binary arithmetic.

## Logic Diagram

[View Logic Diagram](https://electronics.stackexchange.com/questions/146824/design-of-a-basic-half-adder)

## Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

## Boolean Expressions

- **Sum** = A ⊕ B (XOR)
- **Carry** = A · B (AND)

## Applications

- Used in arithmetic logic units (ALUs)
- Building block for Full Adders and more complex arithmetic circuits

## Verilog Code

[View Half_Adder.v](./Half_Adder.v)
[View Half Adder TestBench](./Half_Adder_tb.v)

## Output :
[View Schematic Diagram](https://photos.app.goo.gl/cEe5mLsmoMqCXvUP8)
[View Output Waveform](https://photos.app.goo.gl/t1JoBE9dUtKzuLpe9)

## References

- [Wikipedia: Half Adder](https://en.wikipedia.org/wiki/Adder_(electronics)#Half_adder)
- Digital Design textbooks



