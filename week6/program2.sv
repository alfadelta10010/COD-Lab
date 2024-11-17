module sync_reset_flip_flop (
    input logic clk,        // Clock signal
    input logic rst_n,      // Active-low synchronous reset
    input logic d,          // Data input
    output logic q          // Output
);
    always_ff @(posedge clk) begin
        if (~rst_n)           // If reset is active (low)
            q <= 0;           // Reset the output to 0
        else
            q <= d;           // Otherwise, transfer the data input to the output
    end

endmodule
