module Full_Subtractor_tb();
  reg a,b,borrow_in;
  wire diff,borrow_out;
  Full_Subtractor uut(.a(a),.b(b),.borrow_in(borrow_in),.diff(diff),.borrow_out(borrow_out));
  initial begin
     $dumpfile("wave.vcd"); 
    $dumpvars(0,Full_Subtractor_tb);  
  end
  initial begin
    a=0; b=0; borrow_in=0; #10
   a=0; b=0; borrow_in=1; #10 
    a=0; b=1; borrow_in=0; #10
    a=0; b=1; borrow_in=1; #10
    a=1; b=0; borrow_in=0; #10
    a=1; b=0; borrow_in=1; #10
    a=1; b=1; borrow_in=0; #10
    a=1; b=1; borrow_in=1; 
    #10 $finish;
  end
endmodule
