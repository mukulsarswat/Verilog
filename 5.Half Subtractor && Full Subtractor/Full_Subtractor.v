module Full_Subtractor(a,b,borrow_in,diff,borrow_out);
  input a,b,borrow_in;
  output diff,borrow_out;
  assign diff=(a^b)^borrow_in;
  assign borrow_out=((~a)&b)|((~a)&borrow_in))|(b&borrow_in);
endmodule
