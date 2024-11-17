//Program1: Write a SV program for Asynchronous Reset Flip Flop

module A_rest_FF (
    input logic clk,        
    input logic reset, 
    input logic d,          
    output logic q          
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;         
        else
            q <= d;         
    end

endmodule