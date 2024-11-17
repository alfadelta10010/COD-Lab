module execution_stage#(parameter N=32)(branch,rs1_data,rs2_data,imm32,alu_op,alu_src,alu_result,pc_src);
	input logic [N-1:0]rs1_data,rs2_data,imm32;
	input logic [3:0] alu_op;
	input logic alu_src,branch;
	output logic pc_src;
	output logic [N-1:0]alu_result;
	
	wire y,zero;
	mux_2_1 g1(.a(rs2_data),.b(imm32),.s(alu_src),.y(input_2));
	alu g2(.rs1_data(rs1_data), .input_2(input_2), .alu_op(alu_op), .alu_result(alu_result), .zero(zero));
	and_gate unit_6(.a(zero),.b(branch),.c(pc_src));
	
	
endmodule
	 
	