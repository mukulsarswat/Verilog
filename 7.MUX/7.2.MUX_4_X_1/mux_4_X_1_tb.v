module four_x_one_tb();
  reg d0, d1, d2, d3;
  reg [1:0] sel;
  wire out;

  four_x_one uut(d0, d1, d2, d3, sel, out);

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1,uut);
  end

  initial begin
    d0 = 1; d1 = 0; d2 = 1; d3 = 0;

    sel = 2'b00; #10; 
    sel = 2'b01; #10; 
    sel = 2'b10; #10;
    sel = 2'b11; #10; 

    $finish;
  end
endmodule
