//Program2:Write a SV program for Synchronous Reset Flip Flop

module sync_reset_ff (
    input logic clk,        
    input logic sync_reset, 
    input logic d,          
    output logic q          
);
    always_ff @(posedge clk) begin
        if (sync_reset)
            q <= 0;         
        else
            q <= d;         
    end

endmodule

