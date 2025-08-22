
module bcd_to_binary (
    input  [3:0] ones,     
    input  [3:0] tens,      
    input  [3:0] hundreds,  
    output reg [7:0] bin   
);

    always @(*) begin
        
        bin = (hundreds * 8'd100) + (tens * 8'd10) + ones;
    end

endmodule
