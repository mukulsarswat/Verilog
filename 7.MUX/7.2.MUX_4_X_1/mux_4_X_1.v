// IMPLEMENT 4:1 using 2:1 MUX 
module two_x_one(d0,d1,sel,y);
	input d0,d1,sel;
	output y;

	assign y=(d0&(~sel))|(d1&sel);
endmodule

module four_x_one(d0, d1, d2, d3, sel, out);
  input d0, d1, d2, d3;
  input [1:0] sel;
  output out;
  wire w1, w2;

  // First level: select between d0/d1 and d2/d3
  two_x_one t1(d0, d1, sel[0], w1);
  two_x_one t2(d2, d3, sel[0], w2);

  // Second level: select between w1 and w2
  two_x_one t3(w1, w2, sel[1], out);
endmodule
