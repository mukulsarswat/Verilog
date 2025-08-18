
# Half Subtractor & Full Subtractor

This document explains the **Half Subtractor** and **Full Subtractor** circuits, their logic, truth tables, boolean expressions, applications, and provides references to Verilog implementations and simulation outputs.

---

## Half Subtractor

A **Half Subtractor** is a combinational circuit that subtracts two single-bit binary numbers (A and B) and provides the difference and borrow outputs.

### Overview

- **Inputs:** A, B (single-bit binary numbers)
- **Outputs:** Difference (Diff), Borrow

The Half Subtractor does not consider borrow-in from a previous stage and is typically used for the least significant bit in binary subtraction.

### Logic Diagram

[View Logic Diagram](https://www.electronics-tutorials.ws/combination/comb_4.html)

### Truth Table

| A | B | Diff | Borrow |
|---|---|------|--------|
| 0 | 0 |  0   |   0    |
| 0 | 1 |  1   |   1    |
| 1 | 0 |  1   |   0    |
| 1 | 1 |  0   |   0    |

### Boolean Expressions

- **Difference** = A ⊕ B (XOR)
- **Borrow** = A' · B

### Applications

- Used in arithmetic logic units (ALUs)
- Basic building block for full subtractors and more complex subtraction circuits

### Verilog Code

[View Half_Subtractor.v](./Half_Subtractor.v)
<br>
[View Half Subtractor TestBench](./Half_Substractor_tb.v)

### Output

[View Schematic Diagram](https://www.hackatronic.com/half-subtractor-and-full-subtractor-circuits-truth-table-equation/)
<br>
[View Output Waveform](https://photos.app.goo.gl/6xZfVUr5yfhTJFVH7)

### References

- [Wikipedia: Subtractor](https://en.wikipedia.org/wiki/Subtractor)
- Digital Design textbooks

---

## Full Subtractor

A **Full Subtractor** is a combinational circuit that subtracts three single-bit binary numbers: A (minuend), B (subtrahend), and Bin (borrow-in from previous stage). It generates a difference and a borrow-out.

### Overview

- **Inputs:** A, B, Bin (all single-bit binary numbers)
- **Outputs:** Difference (Diff), Borrow

The Full Subtractor can be used in multi-bit binary subtraction by cascading several full subtractors.

### Logic Diagram

[View Logic Diagram](https://www.electronics-tutorials.ws/combination/comb_5.html)

### Truth Table

| A | B | Bin | Diff | Borrow |
|---|---|-----|------|--------|
| 0 | 0 |  0  |  0   |   0    |
| 0 | 0 |  1  |  1   |   1    |
| 0 | 1 |  0  |  1   |   1    |
| 0 | 1 |  1  |  0   |   1    |
| 1 | 0 |  0  |  1   |   0    |
| 1 | 0 |  1  |  0   |   0    |
| 1 | 1 |  0  |  0   |   0    |
| 1 | 1 |  1  |  1   |   1    |

### Boolean Expressions

- **Difference** = A ⊕ B ⊕ Bin
- **Borrow** = (A' · B) + (A' · Bin) + (B · Bin)

### Applications

- Used in arithmetic logic units (ALUs)
- Essential for multi-bit binary subtraction (ripple-borrow subtractors, etc.)
- Building block for more complex arithmetic circuits

### Verilog Code

[View Full_Subtractor.v](./Full_Subtractor.v)
<br>
[View Full Subtractor TestBench](./Full_Subtractor_tb.v)

### Output

[View Schematic Diagram](https://www.hackatronic.com/half-subtractor-and-full-subtractor-circuits-truth-table-equation/)
<br>
[View Output Waveform](https://photos.app.goo.gl/EPvnt4n41wCjJq9RA)

### References

- [Wikipedia: Subtractor](https://en.wikipedia.org/wiki/Subtractor)
- Digital Design textbooks

```
