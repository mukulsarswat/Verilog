module tb_jk_flip_flop;

    reg clk;
    reg reset;
    reg J;
    reg K;
    wire Q;

  
    jk_flip_flop uut (.clk(clk),.reset(reset),.J(J),.K(K),.Q(Q));
 initial begin
      
      $dumpfile("wave.vcd");
        $dumpvars(0, tb_jk_flip_flop);
 end
   
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1; J = 0; K = 0;
        #10 reset = 0;

       
        #10 J = 0; K = 0; // No change
        #10 J = 0; K = 1; // Reset
        #10 J = 1; K = 0; // Set
        #10 J = 1; K = 1; // Toggle
        #10 J = 0; K = 0; // No change
        #10 J = 1; K = 1; // Toggle
        #10 $finish;
    end

endmodule
