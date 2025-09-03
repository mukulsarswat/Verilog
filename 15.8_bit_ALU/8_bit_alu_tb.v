
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
  end
initial begin
  

    A = 8'd15; B = 8'd10;

    // Test Addition
    ALU_Sel = 3'b000; #10;

    // Test Subtraction
    ALU_Sel = 3'b001; #10;

    // Test AND
    ALU_Sel = 3'b010; #10;

    // Test OR
    ALU_Sel = 3'b011; #10;

    // Test XOR
    ALU_Sel = 3'b100; #10;

    // Test Left Shift
    ALU_Sel = 3'b101; #10;

    // Test Right Shift
    ALU_Sel = 3'b110; #10;

    // Test SLT
    ALU_Sel = 3'b111; #10;

    // Test Zero flag
    A = 8'd5; B = 8'd5; ALU_Sel = 3'b001; #10;

    $finish;
end

endmodule
