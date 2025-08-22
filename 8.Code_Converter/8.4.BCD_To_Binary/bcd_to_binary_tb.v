`timescale 1ns/1ps
module tb_bcd_to_binary;
    reg  [3:0] ones, tens, hundreds;
    wire [7:0] bin;

    
    bcd_to_binary uut (
        .ones(ones),
        .tens(tens),
        .hundreds(hundreds),
        .bin(bin)
    );
  	 initial begin
	$dumpfile("dump.vcd");
  	$dumpvars;
     end
    initial begin
        // $display("Time | Hundreds Tens Ones | Binary");
        // $monitor("%4t |    %d       %d    %d  |   %d", 
        //           $time, hundreds, tens, ones, bin);

        // Apply test values
        hundreds = 0; tens = 0; ones = 0;   #10;
        hundreds = 0; tens = 0; ones = 7;   #10;
        hundreds = 0; tens = 4; ones = 5;   #10;
        hundreds = 0; tens = 9; ones = 9;   #10;
        hundreds = 1; tens = 2; ones = 3;   #10;
        hundreds = 2; tens = 5; ones = 5;   #10;

        #20 $finish;
    end
endmodule
