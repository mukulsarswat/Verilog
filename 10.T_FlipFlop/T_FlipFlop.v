module T_FF (
    input wire clk,
    input wire reset,
    input wire T,
    output reg Q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 0;
    else if (T)
        Q <= ~Q;
    else
        Q <= Q;
end

endmodule
