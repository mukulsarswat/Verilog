// Code your design here
module two_x_one(d0,d1,sel,y);
	input d0,d1,sel;
	output y;

	assign y=(d0&(~sel))|(d1&sel);
endmodule

module four_x_one(d, sel, out);
  input [3:0]d;
  input [1:0] sel;
  output out;
  wire w1, w2;

  //First Sel same to both 2X1
  two_x_one t1(d[0], d[1], sel[0], w1);
  two_x_one t2(d[2], d[3], sel[0], w2);

  // Second Sel to third 2X1
  two_x_one t3(w1, w2, sel[1], out);
endmodule

module eight_x_one(i,sel,y);
	input [7:0]i;
	input [2:0]sel;
	output y;
	wire [1:0]xx;
	four_x_one f1(i[3:0],sel[1:0],xx[0]);
	four_x_one f2(i[7:4],sel[1:0],xx[1]);
	two_x_one m1(xx[0],xx[1],sel[2],y);
	
endmodule
