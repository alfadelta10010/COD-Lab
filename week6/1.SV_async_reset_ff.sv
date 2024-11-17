module async_reset_ff (
    input clk,    // Clock input
    input rst,    // Asynchronous reset input
    input d,      // Data input
    output reg q  // Output
);

    always @(posedge clk or posedge rst) begin
        if (rst)        // When reset is active
            q <= 0;     // Reset output to 0
        else            // Otherwise, on the rising edge of clock
            q <= d;     // Store the input data (D)
    end

endmodule
