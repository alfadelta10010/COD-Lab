// program fo write_back_stage
module write_back_stage #(parameter N=32)(data_out,alu_result,wr_data,mem_read);

output logic [N-1:0]wr_data;
input logic [N-1:0]data_out;
input logic [N-1:0]alu_result;
input logic mem_read;

mux_2_1 unit (.a(data_out),.b(alu_result),.s(mem_read),.y(wr_data));
endmodule

// program fro memory_stage
module mem_stage #(parameter N=32) (mem_write, mem_read, data_out, alu_result, data_in);

	input logic [N-1:0]data_in,alu_result;
	output logic [N-1:0]data_out;
	input logic mem_write,mem_read;
data_mem unit (.mem_write(mem_write), .mem_read(mem_read), . data_out(data_out),. alu_result(alu_result), .data_in(data_in));
endmodule