module MA(
    input logic [31:0] ALU_result,
    input logic [31:0] rs2_data,
    input logic mem_read,
    input logic mem_write,
    input logic clk,
    output logic [31:0] read_data
);

    memory_access memory_access(.ALU_result(ALU_result),
                         .rs2_data(rs2_data),
                         .mem_read(mem_read),
                         .mem_write(mem_write),
                         .clk(clk),
                         .read_data(read_data));

endmodule
