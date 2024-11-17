// Synchronous Reset Flip-Flop

module sync_reset_ff (
    input logic clk,
    input logic rst_n,
    input logic d,
    output logic q
);
    always @(posedge clk) begin
        if (!rst_n) 
            q <= 0; // Synchronous reset on clock edge
        else 
            q <= d; // Data transfer on clock edge
    end
endmodule