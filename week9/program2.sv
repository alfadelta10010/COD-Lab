
module mem_stage #(parameter N=32) (mem_write, mem_read, data_out, alu_result, data_in);

	input logic [N-1:0]data_in,alu_result;
	output logic [N-1:0]data_out;
	input logic mem_write,mem_read;
data_mem unit (.mem_write(mem_write), .mem_read(mem_read), . data_out(data_out),. alu_result(alu_result), .data_in(data_in));
endmodule