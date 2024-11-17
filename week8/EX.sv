module EX(branch,data1,data2,imm_new,ALU_src,ALU_op,and_out,ALU_res);
	input logic branch, ALU_src;
	input logic [31:0] data1,data2,imm_new;
	output logic [31:0] ALU_res;
	input logic [3:0] ALU_op;
	logic mux_out1,zero;
	output logic and_out;

	mux2_1_ex me1(.data2(data2),.imm_new(imm_new),.ALU_src(ALU_src),.mux_out1(mux_out1));
	ALU_mod a1(.data1(data1),.mux_out1(mux_out1),.ALU_op(ALU_op),.ALU_res(ALU_res),.zero(zero));
	AND_mod an1(.branch(branch),.zero(zero),.and_out(and_out));
endmodule