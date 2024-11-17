 Write a SV program for Memory Access & Writeback Stage
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

module WB(
    input logic [31:0] read_data,
    input logic [31:0] ALU_result,
    input logic mem_to_reg,
    output logic [31:0] write_data
);

    muxwb wb_mux(.rs2(ALU_result), .immfinal(read_data), .alu_src(mem_to_reg), .out(write_data));
endmodule


Write a SV program for Data memory

module memory_access(
input logic [31:0]ALU_result,
input logic [31:0]rs2_data,
input logic mem_read,
input logic mem_write,
input logic clk,
output logic read_data
);
logic[31:0]data_mem[31:0];
always_ff@(posedge clk)
begin
if(mem_read)
read_data<=data_mem[ALU_result];
else if(mem_write)
begin
data_mem[ALU_result]<=rs2_data;
read_data<=32'b0;
end
else
read_data<=32'b0;
end
endmodule