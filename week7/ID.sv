module ID(instr,data1,data2,reset,wb_out,wb_en,clk,imm_new,func3,func7,opcode,pc_out,branch_imm);
	logic [4:0] rs1,rs2,rd;
	logic [11:0] imm;
	input logic clk;
   output logic [2:0] func3;
	output logic [6:0] func7,opcode;
	output logic [31:0] data1,data2;
	input logic reset;
	input logic wb_en;
	input logic [31:0] wb_out;
   output logic [31:0] imm_new,branch_imm;
	input logic [31:0] instr,pc_out;
	logic [31:0] imm_new_shift;
	
	Decoder d1(.instr(instr),.rs1(rs1),.rs2(rs2),.rd(rd),.func3(func3),.func7(func7),.imm(imm),.opcode(opcode));
	registerfile r1(.rs1(rs1),.rs2(rs2),.data1(data1),.data2(data2),.reset(reset),.rd(rd),.wb_en(wb_en),.wb_out(wb_out),.clk(clk));
	sign_ex s1(.opcode(opcode), .imm(imm), .imm_new(imm_new), .imm_new_shift(imm_new_shift));
	branch_adder ba1(.pc_out(pc_out), .imm_new_shift(imm_new_shift), .branch_imm(branch_imm));
endmodule