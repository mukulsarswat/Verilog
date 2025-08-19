module Full_Adder(a,b,c,s,co);
                                     input a,b,c;
                                     output s,co;
                                     assign s=a^b^c;
                                     assign co= (a&b)|(c&(a^b));
									endmodule

module n_bit_ripple_carry_adder(a[3:0],b[3:0],cin,sum[3:0],cout);
                                   input [3:0]a,b;
                                   input cin;
                                   output [3:0]sum;
                                   output cout;
                                   wire w[2:0];
                                   Full_Adder fa1(a[0],b[0],cin,sum[0],w[0]);
                                   Full_Adder fa2(a[1],b[1],w[0],sum[1],w[1]);
                                   Full_Adder fa3(a[2],b[2],w[1],sum[2],w[2]);
                                   Full_Adder fa4(a[3],b[3],w[2],sum[3],cout);
 endmodule
