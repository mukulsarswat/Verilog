
## 📘 README.md — 8-bit ALU in Verilog

```markdown
# 🔢 8-bit ALU in Verilog

This project implements a modular **8-bit Arithmetic Logic Unit (ALU)** using Verilog. Designed for simulation on **EDA Playground**, it supports a range of operations including arithmetic, bitwise logic, shifts, and comparison. The project includes a comprehensive testbench with waveform dumping for visual verification.

---

## 🚀 Features

| Opcode | Operation             | Description                          |
|--------|------------------------|--------------------------------------|
| 000    | Addition               | `A + B`                              |
| 001    | Subtraction            | `A - B`                              |
| 010    | Bitwise AND            | `A & B`                              |
| 011    | Bitwise OR             | `A | B`                              |
| 100    | Bitwise XOR            | `A ^ B`                              |
| 101    | Logical Left Shift     | `A << 1`                             |
| 110    | Logical Right Shift    | `A >> 1`                             |
| 111    | Set-on-less-than (SLT) | `A < B ? 1 : 0`                      |

Includes a `Zero` flag output to indicate when the result is zero.

---

## 📂 File Structure

```
alu_8bit/
├── alu_8bit.v        # ALU module
├── tb_alu_8bit.v     # Testbench with waveform dumping
└── README.md         # Documentation
```

---

## 🧠 Educational Value

- ✅ **Beginner-friendly**: Clear opcode mapping and modular design
- ✅ **Simulation-ready**: Includes `$dumpfile` and `$dumpvars` for waveform analysis
- ✅ **Interview-relevant**: Demonstrates control logic, combinational design, and testbench writing
- ✅ **Portfolio-polished**: Organized for GitHub with textbook-style clarity

---

## 🔧 How to Run (EDA Playground)

1. Go to [EDA Playground](https://www.edaplayground.com/)
2. Paste `alu_8bit.v` and `tb_alu_8bit.v` into separate tabs
3. Select **Icarus Verilog** as the simulator
4. Enable **VCD waveform viewer**
5. Click **Run** to simulate and inspect waveforms

---

## 📜 Code Snippets

### `alu_8bit.v`

```verilog
module alu_8bit (
    input  [7:0] A, B,
    input  [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output Zero
);

assign Zero = (ALU_Out == 8'b00000000);

always @(*) begin
    case (ALU_Sel)
        3'b000: ALU_Out = A + B;
        3'b001: ALU_Out = A - B;
        3'b010: ALU_Out = A & B;
        3'b011: ALU_Out = A | B;
        3'b100: ALU_Out = A ^ B;
        3'b101: ALU_Out = A << 1;
        3'b110: ALU_Out = A >> 1;
        3'b111: ALU_Out = (A < B) ? 8'b1 : 8'b0;
        default: ALU_Out = 8'b00000000;
    endcase
end

endmodule
```

### `tb_alu_8bit.v`

```verilog
`timescale 1ns / 1ps
module tb_alu_8bit;

reg [7:0] A, B;
reg [2:0] ALU_Sel;
wire [7:0] ALU_Out;
wire Zero;

alu_8bit uut (
    .A(A), .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .Zero(Zero)
);

initial begin
    $dumpfile("alu_8bit.vcd");
    $dumpvars(0, tb_alu_8bit);

    A = 8'd15; B = 8'd10;

    ALU_Sel = 3'b000; #10;
    ALU_Sel = 3'b001; #10;
    ALU_Sel = 3'b010; #10;
    ALU_Sel = 3'b011; #10;
    ALU_Sel = 3'b100; #10;
    ALU_Sel = 3'b101; #10;
    ALU_Sel = 3'b110; #10;
    ALU_Sel = 3'b111; #10;

    A = 8'd5; B = 8'd5; ALU_Sel = 3'b001; #10;

    $finish;
end

endmodule
```

---

## 🧩 Next Steps

- 🔄 Add multiplication and division support
- 🧪 Expand testbench with randomized inputs
- 📘 Integrate into your digital textbook repo with concept cards

