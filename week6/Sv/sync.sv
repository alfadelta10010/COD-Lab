module sync_ff(
    input logic clk,       // Clock input
    input logic reset,     // Synchronous reset input
    input logic d,         // Data input
    output logic q         // Output
);

    // Always block for the flip-flop behavior
    always_ff @(posedge clk) begin
        if (reset) begin
            q <= 1'b0;     // Reset the output to 0 synchronously
        end else begin
            q <= d;        // Update the output with input 'd' on clock edge
        end
    end

endmodule