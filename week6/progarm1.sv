module async_reset(
    input logic clk,      // Clock input
    input logic rst_n,    // Asynchronous reset, active low
    input logic d,        // Data input
    output logic q        // Data output
);

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            q <= 1'b0;    // Reset the flip-flop output to 0
        end else begin
            q <= d;       // Set the flip-flop output to the input data
        end
    end

endmodule
