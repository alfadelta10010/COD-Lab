module regfile#(parameter n=32)(
    input logic [4:0] rd, rs1, rs2,
    input logic reset,
    input logic write_enable,
    input logic clk,
    output logic [n-1:0] rdata1, rdata2,
    input logic [n-1:0] wr_data
);

    // Define the register file
    logic [n-1:0] rf[n-1:0];

    // Read data from the register file
    assign rdata1 = reset ? 0 : rf[rs1];
    assign rdata2 = reset ? 0 : rf[rs2];

    // Write data to the register file on positive clock edge if write_enable is asserted
    always @(posedge clk) begin
        if (write_enable && !reset) begin
            rf[rd] <= wr_data;
        end
    end

endmodule
