module Counter (clk, reset, counter);
	input clk, reset;
	output reg [3:0] counter;
	always@(posedge clk)
      begin
          if(reset)
          counter <= 0;
      else
      begin
        if(counter == 9)
        counter <= 0;
        else
        counter <= counter + 1;
        end
      end
endmodule
