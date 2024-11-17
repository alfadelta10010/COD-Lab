module sync_reset_ff (
    input logic clk,
    input logic rst_n,
    input logic d,
    output logic q
);

    always @(posedge clk) begin
        if (!rst_n) 
            q <= 0;           // Reset output to 0 on clock edge
        else 
            q <= d;           // Transfer data on clock edge
    end

endmodule
