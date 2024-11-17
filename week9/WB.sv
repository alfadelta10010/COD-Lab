module WB(ALU_res,data_out,wb_out,mem_reg);
	input logic [31:0] ALU_res,data_out;
	input logic mem_reg;
	output logic [31:0]wb_out;
	assign wb_out = mem_reg ? data_out : ALU_res;
endmodule
