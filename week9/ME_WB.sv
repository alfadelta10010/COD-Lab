module ME_WB #(parameter N=32)(
	input logic [N-1:0] alu_result,
	input logic [N-1:0] data_in,
	input logic mem_read,
	input logic mem_write,
	input logic mem_reg,
	input logic [2:0] width,
	output logic [N-1:0] wr_data
	);
	
	memory_1 memory (.alu_result(alu_result),.data_in(data_in),.mem_read(mem_read),.mem_write(mem_write),.width(width),.data_out(data_out));
	mux2_1 wb_mux (.a(alu_result),.b(data_out),.s(mem_reg),.y(wr_data));
	
endmodule
