module execution_stage#(parameter N=32)(rs1_data,rs2_data,imm32,alu_op,alu_src,alu_result,zero);
	input logic [N-1:0]rs1_data,rs2_data,imm32;
	input logic [3:0] alu_op;
	input logic alu_src;
	output logic zero;
	output logic [N-1:0]alu_result;
	
	wire y;
	mux_2_1 g1(.a(rs2_data),.b(imm32),.s(alu_src),.y(input_2));
	alu g2(.rs1_data(rs1_data), .input_2(input_2), .alu_op(alu_op), .alu_result(alu_result), .zero(zero));
	mux_2_1 unit_6(.a(zero),.b(branch),.s(branch),.y(pc_src));
		
endmodule
	 
	