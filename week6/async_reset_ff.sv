module async_reset_ff (
    input wire clk,       // Clock input
    input wire reset,     // Asynchronous reset input
    input wire d,         // Data input
    output reg q          // Output
);


always @ (posedge clk or posedge reset) begin
    if (reset)          // If reset is asserted
        q <= 0;         // Set the output to 0 (active-low reset)
    else
        q <= d;         // Otherwise, latch the value of 'd' on the clock edge
end

endmodule