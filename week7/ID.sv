module ID(data, f3, f7, opcode, WrEn, Imm, r1, r2, DIn, clk);
	input logic [31:0] data;
	output logic [2:0] f3;
	output logic [6:0] f7;
	output logic [6:0] opcode;
	input bit WrEn;
	input bit clk;
	output logic [31:0] Imm;
	output logic [31:0] r1;
	output logic [31:0] r2;
	input logic [31:0] DIn;
	logic [31:0] inst;
	logic [4:0] rs1;
	logic [4:0] rs2;
	logic [4:0] rd;
	Decoder dec(.instIn(data), .opcode(opcode), .instOut(inst), .rs1(rs1), .rs2(rs2), .rd(rd), .fn3(f3), .fn7(f7));
	
	SignExtender sext(.opcode(opc), .instIn(inst), .immOut(Imm));
	RegisterFile regfile(.din(DIn), .rd(rd), .rs1(rs1), .rs2(rs2), .wen(WrEn), .r1(r1), .r2(r2), .clk(clk));
endmodule