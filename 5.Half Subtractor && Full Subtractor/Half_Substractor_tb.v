module Half_Substractor_tb();
  reg a,b;
  wire diff,borrow;

  Half_Substractor uut(.a(a),.b(b),.diff(diff),.borrow(borrow));
  initial 
    begin
       $dumpfile("wave.vcd"); 
      $dumpvars(0,Half_Substractor_tb);  
    end
  initial 
	begin
      a=0; b=0;  #10
     
      a=0; b=1; #10
     
      a=1; b=0; #10
    
      a=1; b=1; #10
 
      $finish;
     end
endmodule
