module sequence_detector (
    input clk,
    input rst,
    input in_bit,
    output reg detected
);

// State encoding using parameters
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
        S1: next_state = in_bit ? S1 : S2;
        S2: next_state = in_bit ? S3 : S0;
        S3: begin
            next_state = in_bit ? S4 : S2;
            detected = in_bit; // Output high when '1011' is completed
        end
        S4: begin
            next_state = in_bit ? S1 : S2;
            detected = 1;
        end
        default: next_state = S0;
    endcase
end

endmodule
