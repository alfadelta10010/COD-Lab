`timescale 1ns / 1ps 
 

module IE( imm, opcode, result, f3,f7,zero, pc_present,reg1,sum, reg2,Branch, MemRead, MemWrite, MemtoReg);
	input logic [31:0] reg1, reg2;
	input logic [31:0] imm;
	 logic [3:0] ALUOp;
	 logic ALUSrc;
	  input logic [6:0] opcode;
	  output logic Branch, MemRead, MemWrite, MemtoReg,sum;

    input logic [31:0] pc_present;
	output logic [31:0] result;
	//output logic [0:0] zero;
 // to IF
	logic [31:0] a, b;
	 input logic [2:0] f3;
	  input logic [6:0] f7;
     logic [3:0] ALUoperation ;
     output logic zero;
MainControl control(.opcode(opcode),.Branch(Branch),.MemRead(MemRead),.MemWrite(MemWrite),.RegWrite(RegWrite),.ALUSrc(ALUSrc),.MemtoReg(MemtoReg),.ALUOp(ALUOp)); 
ALUControl alu(.ALUOp(ALUOp),.func3(f3),.func7(f7),.ALUoperation(ALUoperation));
mux2_1 ALUM (.d0(imm), .d1(reg2), .s(ALUSrc), .y(a));
ALU ALU(.d1(reg1),.d2(a),.control(ALUoperation),.result(result),.zero(zero));
exec_adder add(.a(pc_present),.b(imm),.s(sum),.cout(unused),.cin(cin));


endmodule