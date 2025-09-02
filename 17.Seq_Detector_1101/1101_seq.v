
module sequence_detector_1101 (
    input clk,
    input rst,
    input in_bit,
    output reg detected
);

// State encoding
parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100;

reg [2:0] current_state, next_state;

always @(posedge clk or posedge rst) begin
    if (rst)
        current_state <= S0;
    else
        current_state <= next_state;
end

always @(*) begin
    detected = 0;
    case (current_state)
        S0: next_state = in_bit ? S1 : S0;
        S1: next_state = in_bit ? S2 : S0;
        S2: next_state = in_bit ? S2 : S3;
        S3: begin
            next_state = in_bit ? S4 : S0;
            detected = in_bit; // Output high when '1101' is completed
        end
        S4: begin
            next_state = in_bit ? S2 : S0;
            detected = 1;
        end
        default: next_state = S0;
    endcase
end

endmodule
