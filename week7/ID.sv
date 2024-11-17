module ID #(parameter N=32)(
	input logic [N-1:0]inst,
	input logic [N-1:0]wr_data,
	input logic reset,
	input logic wr_en,
	output logic [N-1:0]rs1,
	output logic [N-1:0]rs2,
	output logic [N-1:0]s_imm,
	output logic [2:0]funct3,
	output logic [6:0]funct7,
	output logic [6:0]opcode
	);
	
	decoder d1(.inst(inst),.rs1_addr(rs1_addr),.rs2_addr(rs2_addr),.rd_addr(rd_addr),.Imm(Imm),.funct3(funct3),.funct7(funct7),.opcode(opcode));
	regfile rgf(.rs1_addr(rs1_addr),.rs2_addr(rs2_addr),.rd_addr(rd_addr),.wr_en(wr_en),.wr_data(wr_data),.reset(reset),.rs1(rs1),.rs2(rs2));
	sign_ext si(.Imm(Imm),.opcode(opcode),.s_imm(s_imm));
	
endmodule
