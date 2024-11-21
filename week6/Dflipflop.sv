module Dflipflop #(parameter N=32) (
    input logic clk,    
    input logic [N-1:0] d,      
    input logic reset,  
    output logic [N-1:0] q  
);
    always_ff @(posedge clk ) 
	 begin
        if (reset)
            q <= 0;  
        else
            q <= d;      
    end
endmodule