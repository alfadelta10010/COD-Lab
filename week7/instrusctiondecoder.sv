module instrusctiondecoder #(parameter N=32)(
	input logic clk,
	input logic [N-1:0]inst,
	output logic [N-1:0]rs1_out,
	output logic [N-1:0]rs2_out,
	output logic [N-1:0]s_imm,
	output logic [2:0]func3,
	output logic [6:0]func7
	);
	
	decoder d1(.inst(inst),.rs1(rs1),.rs2(rs2),.rd(rd),.imm(imm),.func3(func3),.func7(func7),.opcode(opcode));
	regfile rgf(.rs1(rs1),.rs2(rs2),.rd(rd),.write_en(write_en),.write_data(write_data),.clk(clk),.reset(reset),.rs1_out(rs1_out),.rs2_out(rs2_out));
	signext se(.imm(imm),.opcode(opcode),.s_imm(s_imm));
	
endmodule