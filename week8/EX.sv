module EX #(parameter N=32)(
	input logic [N-1:0] rs1,
	input logic [N-1:0] rs2,
	input logic [N-1:0] s_imm,
	input logic [N-1:0] pc,
	input logic [3:0] aluop,
	input logic [2:0]func3,
	input logic [6:0] funct7,
	input logic branch,
	input logic alusrc,
	output logic [N-1:0] alu_result,
	output logic [N-1:0] pc_branch,
	output logic branch_zero
	);
	
	mux2_1 alu_mux2 (.a(rs2),.b(s_imm),.s(alusrc),.y(alumux));
	alu_ctrl alu_control(.func3(func3),.funct7(funct7),.aluop(aluop),.alucontrol(alucontrol));
	Alu alu (.rs1(rs1),.alumux(alumux),.alucontrol(alucontrol),.alu_result(alu_result),.zero(zero));
	and_gate branch_andgate (.a(branch),.b(zero),.y(branch_zero));
	adder_pc adder_pc (.pc(pc),.s_imm(s_imm),.pc_branch(pc_branch));
	
endmodule
