
`timescale 1ns / 1ps
module tb_sr_flipflop;

reg S, R, clk;
wire Q, Q_bar;

sr_flipflop uut (
    .S(S),
    .R(R),
    .clk(clk),
    .Q(Q),
    .Q_bar(Q_bar)
);
initial begin
    $dumpfile("sr_flipflop.vcd");
    $dumpvars(0, tb_sr_flipflop);
end

initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock period
end


initial begin
   
    // Initial state
    S = 0; R = 0; #10;

    // Set
    S = 1; R = 0; #10;

    // Reset
    S = 0; R = 1; #10;

    // No change
    S = 0; R = 0; #10;

    // Invalid condition
    S = 1; R = 1; #10;

    $finish;
end

endmodule
