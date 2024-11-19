module sync_reset_dff (
    input  logic clk,    // Clock input
    input  logic reset,  // Synchronous reset
    input  logic d,      // Data input
    output logic q       // Data output
);

    always_ff @(posedge clk) begin
        if (reset) begin
            q <= 1'b0; // Reset output to 0 on clock edge
        end else begin
            q <= d;    // On clock edge, latch the data
        end
    end

endmodule
