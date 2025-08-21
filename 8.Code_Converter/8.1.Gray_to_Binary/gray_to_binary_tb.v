//TestBench for Gray to Binary
module test_bench();
    reg [3:0] gray_in;
    wire [3:0]binary_out;
    gray_to_binary uut(gray_in, binary_out);
  initial
    begin 
      $dumpfile("wave.vcd"); 
    $dumpvars(1,uut);  
    end
    initial begin
      gray_in= 4'd0; #10;
      gray_in= 4'd1; #10;
      gray_in= 4'd2; #10;
      gray_in= 4'd3; #10;
      gray_in= 4'd4; #10;
      gray_in= 4'd5; #10;
      gray_in= 4'd6; #10;
      gray_in= 4'd7; #10;
      gray_in= 4'd8;  #10;
      gray_in= 4'd9;  #10;
      gray_in= 4'd10;  #10;
      gray_in= 4'd11; #10;
      gray_in= 4'd12; #10;
      gray_in= 4'd13; #10;
      gray_in= 4'd14;#10;
      gray_in= 4'd15;
    end
    initial
      begin $monitor("gray: %b -> binary: %b", gray_in, binary_out);
      #200 $finish;
    end
endmodule
