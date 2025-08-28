
module tb;
	reg clk,reset;
	wire [3:0]counter;
	Counter uut (clk, reset, counter);
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,uut);
  end
	initial
		begin
        clk = 0;
        forever #5 clk = ~clk;
        end
    initial
    	begin
        reset = 1;
        #10;
        reset = 0;
        end
	initial 
      begin
      // $monitor("counter: %d",counter);
      #125 $finish;
	end
endmodule
