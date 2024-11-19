module async_reset_dff (
    input  logic clk,    // Clock input
    input  logic reset,  // Asynchronous reset
    input  logic d,      // Data input
    output logic q       // Data output
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0; // Reset output to 0
        end else begin
            q <= d;    // On clock edge, latch the data
        end
    end

endmodule
