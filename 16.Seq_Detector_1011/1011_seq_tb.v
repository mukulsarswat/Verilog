`timescale 1ns / 1ps
module tb_sequence_detector;

reg clk, rst, in_bit;
wire detected;

sequence_detector uut (
    .clk(clk),
    .rst(rst),
    .in_bit(in_bit),
    .detected(detected)
);

initial begin
    $dumpfile("sequence_detector.vcd");
    $dumpvars(0, tb_sequence_detector);
end

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1; in_bit = 0; #10;
    rst = 0;

    in_bit = 1; #10;
    in_bit = 0; #10;
    in_bit = 1; #10;
    in_bit = 1; #10;

    $finish;
end

endmodule
