module async_flop #(parameter N=32)(
    input logic clk,
    input logic rst,
    input logic [N-1:0] d,
    output logic [N-1:0] q
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            q <= 32'h00000000; // Reset the output when rst is high
        else
            q <= d; // Capture the input data on clock edge
    end
endmodule





