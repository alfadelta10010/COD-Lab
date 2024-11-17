module syncff #(parameter WIDTH = 2)(
    input logic clk,                // Single clock input
    input logic [WIDTH-1:0] d,      // Data input
    output logic [WIDTH-1:0] q      // Data output (register)
);
    always_ff @(posedge clk) begin
        q <= d;                     // Assign data to output on clock edge
    end
endmodule
