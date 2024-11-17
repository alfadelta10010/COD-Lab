module write_back1 #(parameter N=32)(
	input logic [N-1:0] alu_result,
	input logic [N-1:0] data_out,
	input logic mem_reg,
	output logic [N-1:0] wr_data
	);
	
	//memory_ME memory (.alu_result(alu_result),.data_in(data_in),.mem_read(mem_read),.mem_write(mem_write),.data_out(data_out));
	mux_2_1 wb_mux (alu_result,data_out,mem_reg,wr_data);
	
endmodule
