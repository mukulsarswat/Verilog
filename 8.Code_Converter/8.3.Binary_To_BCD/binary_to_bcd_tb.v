
module tb_binary_to_bcd;
    reg  [7:0] bin;
    wire [3:0] ones, tens, hundreds;

   
    binary_to_bcd uut (
        .bin(bin),
        .ones(ones),
        .tens(tens),
        .hundreds(hundreds)
    );
	initial begin
      $dumpfile("dump.vcd"); 
		$dumpvars;
    end
    initial begin
        // $display("Time | Binary | Hundreds Tens Ones (BCD)");
        // $monitor("%4t |   %d   |     %d       %d     %d", 
        //           $time, bin, hundreds, tens, ones);

     
        bin = 8'd0;    #10;
        bin = 8'd7;    #10;
        bin = 8'd45;   #10;
        bin = 8'd99;   #10;
        bin = 8'd123;  #10;
        bin = 8'd255;  #10;

        #20 $finish;
    end
endmodule
