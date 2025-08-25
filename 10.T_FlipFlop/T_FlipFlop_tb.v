module TB_T_FF();

reg clk;
reg reset;
reg T;
wire Q;

// Instantiate the T Flip-Flop
T_FF uut (
    .clk(clk),
    .reset(reset),
    .T(T),
    .Q(Q)
);

// Clock generation: 10ns period
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin
    // Waveform dumping setup
    $dumpfile("t_ff_waveform.vcd");   // Name of the output VCD file
    $dumpvars(0, TB_T_FF);            // Dump all variables in this module

    // Initialize inputs
    reset = 1; T = 0;
    #10 reset = 0;

    // Toggle T and observe Q
    #10 T = 1;
    #10 T = 1;
    #10 T = 0;
    #10 T = 1;
    #10 T = 1;
    #10 T = 0;

    // Apply reset
    #10 reset = 1;
    #10 reset = 0;

    #20 $finish;
end

// Monitor output
initial begin
    $monitor("Time=%0t | T=%b | Q=%b | Reset=%b", $time, T, Q, reset);
end

endmodule
