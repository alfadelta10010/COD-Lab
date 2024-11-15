// Asynchronous Reset Flip-Flop

module async_reset_ff (
    input logic clk,
    input logic rst_n,
    input logic d,
    output logic q
);
    always @* begin
        if (!rst_n) 
            q = 0; // Asynchronous reset
        else if (clk) 
            q = d; // Data transfer on clock edge
    end
endmodule