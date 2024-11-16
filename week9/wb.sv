module WB(aluresult,data_out,wb_out,mem2reg);
	input logic [31:0] aluresult,data_out;
	input logic mem2reg;
	output logic [31:0]wb_out;
	assign wb_out = mem2reg ? data_out : aluresult;
endmodule
