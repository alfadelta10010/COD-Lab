module WB(
    input logic [31:0] read_data,
    input logic [31:0] ALU_result,
    input logic mem_to_reg,
    output logic [31:0] write_data
);

    muxwb wb_mux(.rs2(ALU_result), .immfinal(read_data), .alu_src(mem_to_reg), .out(write_data));
endmodule
