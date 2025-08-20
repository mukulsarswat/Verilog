// Code your design here
module four_x_one(d0, d1, d2, d3, sel, out);
  input d0, d1, d2, d3;
  input [1:0] sel;
  output out;
  wire w1, w2;

  assign w1=(d0&(~sel[0]))|(d1&sel[0]);
  assign w2=(d2&(~sel[0]))|(d3&sel[0]);
  
  assign out=(w1&(~sel[1]))|(w2&sel[1]);
endmodule
