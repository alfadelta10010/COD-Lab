module async_reset_ff (
    input logic clk,
    input logic rst_n,
    input logic d,
    output logic q
);

    always @* begin
        if (!rst_n) 
            q = 0;           // Reset output to 0
        else if (clk) 
            q = d;           // Transfer data on clock edge
    end

endmodule
