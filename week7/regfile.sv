module regfile(
    input logic reset,
    input logic clk,             // Added clock signal for sequential logic
    input logic[4:0] rs1_addr,
    input logic[4:0] rs2_addr,
    input logic[4:0] rd_addr,
    input logic wr_en,
    input logic[31:0] wr_data,

    output logic [31:0] rs1_data,
    output logic [31:0] rs2_data
);

    reg [31:0] rf[0:31];  // Register file array

    // Reading 
    assign rs1_data = reset ? 32'b0 : rf[rs1_addr];
    assign rs2_data = reset ? 32'b0 : rf[rs2_addr];

    // Writing 
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            rf[rd_addr] <= 32'b0;
        end else if (wr_en) begin
            rf[rd_addr] <= wr_data;
        end
    end
endmodule
