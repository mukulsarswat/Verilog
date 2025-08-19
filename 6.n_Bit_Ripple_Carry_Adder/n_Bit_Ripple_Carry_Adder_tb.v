module n_bit_ripple_carry_adder_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
n_bit_ripple_carry_adder uut(a,b,cin,sum,cout);
initial
  begin 
     $dumpfile("wave.vcd"); 
    $dumpvars(1,uut);  
  end
  initial
    begin
    a=4'b1011; b=4'b0101; cin=0; #10
    a=4'b1000; b=4'b0011; cin=1; #10
    a=4'b0111; b=4'b1101; cin=1; #10
    $finish;
    end
endmodule
