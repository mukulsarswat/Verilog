module half_adder(a,b,sum,carry);
    input a,b;
    output sum,carry;
    assign sum = a^b; //Structural Modelling
    assign carry = a&b;
  always@(*) // Behavioural Modelling
    begin
      sum = a^b;
      carry = a&b;
    end
    xor(sum,a,b); //Gate Level Modelling
    and(carry,a,b);
endmodule
