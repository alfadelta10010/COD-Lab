module sync_reset_ff (
    input logic clk,      // Clock input
    input logic rst_n,    // Synchronous reset, active low
    input logic d,        // Data input
    output logic q        // Data output
);

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            q <= 1'b0;    // Reset the flip-flop output to 0
        end else begin
            q <= d;       // Set the flip-flop output to the input data
        end
    end

endmodule
