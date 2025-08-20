module two_x_one_tb();
		reg d0,d1,sel;
  wire y;
  two_x_one uut(.d0(d0),.d1(d1),.sel(sel),.y(y));
  initial
  begin 
     $dumpfile("wave.vcd"); 
    $dumpvars(1);  
  end
    
  initial
    begin
     d0=1;d1=1;sel=0; #10
      d0=1;d1=0;sel=0; #10
      d0=0;d1=1;sel=0; #10
      d0=0;d1=0;sel=0; #10
      d0=1;d1=1;sel=1; #10
      d0=1;d1=0;sel=1; #10
      d0=0;d1=1;sel=1; #10
      d0=0;d1=0;sel=1; #10
      
    $finish;
    end
endmodule
