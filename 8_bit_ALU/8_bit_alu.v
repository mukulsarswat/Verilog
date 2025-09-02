module alu_8bit (
    input  [7:0] A, B,
    input  [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output Zero
);

assign Zero = (ALU_Out == 8'b00000000);

always @(*) begin
    case (ALU_Sel)
        3'b000: ALU_Out = A + B;           // Addition
        3'b001: ALU_Out = A - B;           // Subtraction
        3'b010: ALU_Out = A & B;           // AND
        3'b011: ALU_Out = A | B;           // OR
        3'b100: ALU_Out = A ^ B;           // XOR
        3'b101: ALU_Out = A << 1;          // Logical Left Shift
        3'b110: ALU_Out = A >> 1;          // Logical Right Shift
        3'b111: ALU_Out = (A < B) ? 8'b1 : 8'b0; // Set-on-less-than
        default: ALU_Out = 8'b00000000;
    endcase
end

endmodule
