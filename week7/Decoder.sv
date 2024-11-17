module Decoder(instr,rd,rs1,rs2,imm,func3,func7,opcode);
	input logic [31:0]instr;
	output logic [4:0] rs1,rs2,rd;
	output logic [11:0] imm;
	output logic [2:0] func3;
	output logic [6:0] func7;
	output logic [6:0] opcode;
	assign opcode = instr[6:0];
	
always @(*)
	begin
		case(opcode)		
		7'b0110011 : 
		begin
		func7 = instr[31:25];
		rs2 = instr[24:20];
		rs1 = instr[19:15];
		func3 = instr[14:12];
		rd = instr[11:7];
		end
		
		7'b0010011 : 
		begin 
		imm = instr[31:20];
		rs1 = instr[19:15];
		func3 = instr[14:12];
		rd = instr[11:7];
		end
		
		7'b000011 : 
		begin 
		imm = instr[31:20];
		rs1 = instr[19:15];
		func3 = instr[14:12];
		rd = instr[11:7];
		end
		
		7'b0100011 :
		begin
		imm = {instr[31:25], instr[11:7]};
		rs2 = instr[24:20];
		rs1 = instr[19:15];
		func3 = instr[14:12];
		end
		
		7'b1100011 :
		begin
		imm = {instr[31], instr[7], instr[30:25], instr[11:8]};
		rs2 = instr[24:20];
		rs1 = instr[19:15];
		func3 = instr[14:12];
		end
		
		7'b1100011 :
		begin
		imm = instr[31:12];
		rd = instr[11:7];
		end
		endcase
	end
endmodule
