module writeback(
input logic read_data,
input logic ALU_out,
input logic mem_to_reg,
output logic write_data
);
muxalu wb_mux(ALU_out,read_data,mem_to_reg,write_data);
endmodule