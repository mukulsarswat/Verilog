module eight_x_one_tb();
  reg [7:0]i;
	reg [2:0]sel;
	wire y;

  eight_x_one uut(i,sel,y);

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1);
  end

  initial begin
    i=8'b00101001;

    sel = 3'b000; #10; 
    sel = 3'b001; #10; 
    sel = 3'b010; #10;
    sel = 3'b011; #10; 
    sel = 3'b100; #10; 
    sel = 3'b101; #10; 
    sel = 3'b110; #10;
    sel = 3'b111; #10; 

    $finish;
  end
endmodule
