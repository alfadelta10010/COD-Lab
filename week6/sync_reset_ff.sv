module sync_reset_dff (
    input  logic clk,        
    input  logic reset_n,   
    input  logic d,    
    output logic q     
);

    always_ff @(posedge clk) begin
        if (!reset_n) begin
            q <= 1'b0;   
        end else begin
            q <= d;         
        end
    end

endmodule
