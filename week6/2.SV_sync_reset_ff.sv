module sync_reset_ff (
    input clk,    // Clock input
    input rst,    // Synchronous reset input
    input d,      // Data input
    output reg q  // Output
);

    always @(posedge clk) begin
        if (rst)        // If reset is active
            q <= 0;     // Reset output to 0
        else            // If reset is not active
            q <= d;     // Store the input data (D)
    end

endmodule
