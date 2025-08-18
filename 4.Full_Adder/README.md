
Full Adder

A Full Adder is a fundamental digital circuit that performs the addition of three single-bit binary numbers: two inputs and an incoming carry. It produces a sum and a carry output, making it suitable for multi-bit binary addition when connected in series.

Overview

Inputs: A, B, Cin (single-bit binary numbers)

Outputs: Sum, Carry

The Full Adder accounts for carry-in from previous stages, making it more versatile than a Half Adder and essential for constructing multi-bit adders.

Logic Diagram

View Logic Diagram

Truth Table
A	B	Cin	Sum	Carry
0	0	0	0	0
0	0	1	1	0
0	1	0	1	0
0	1	1	0	1
1	0	0	1	0
1	0	1	0	1
1	1	0	0	1
1	1	1	1	1
Boolean Expressions

Sum = A ⊕ B ⊕ Cin

Carry = (A · B) + (B · Cin) + (A · Cin)

Applications

Used in arithmetic logic units (ALUs)

Essential building block for Ripple-Carry Adders and other multi-bit adders

Used in processors and digital systems for binary arithmetic

Verilog Code

View Full_Adder.v
<br>
View Full Adder TestBench

Output :

View Schematic Diagram
<br>
View Output Waveform

References

Wikipedia: Full Adder

Digital Design textbooks
