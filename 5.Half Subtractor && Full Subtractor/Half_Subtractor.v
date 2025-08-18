module half_subtractor(a,b,diff,borrow);
  input a,b;
  output diff,borrow;
  assign diff=A^B;
  assign borrow=(~a)&b;
endmodule
