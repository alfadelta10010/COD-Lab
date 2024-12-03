module Decoder(instIn, opcode, rd, rs1, rs2, instOut, fn3, fn7);
	input logic [31:0] instIn;
	output logic [4:0] rd;
	output logic [4:0] rs1;
	output logic [4:0] rs2;
	output logic [31:0] instOut;
	output logic [6:0] opcode;
	output logic [2:0] fn3;
	output logic [6:0] fn7;
	always_comb
		begin
			opcode = instIn[6:0];
			instOut = instIn;
			case(opcode)
				7'b0110111: //LUI
					begin
						rd = instIn[11:7];
						rs1 = 5'bX;
						rs2 = 5'bX;
						fn3 = 3'bX;
						fn7 = 7'bX;
					end
				7'b0010111: //JAL
					begin
						rd = instIn[11:7];
						rs1 = 5'bX;
						rs2 = 5'bX;
						fn3 = 3'bX;
						fn7 = 7'bX;
					end
				7'b0010111: //AUIPC
					begin
						rd = instIn[11:7];
						rs1 = 5'bX;
						rs2 = 5'bX;
						fn3 = 3'bX;
						fn7 = 7'bX;
					end
				7'b1100111: //JALR
					begin
						rd = instIn[11:7];
						rs1 = instIn[19:15];
						rs2 = 5'bX;
						fn3 = instIn[14:12];
						fn7 = 7'bX;
					end
				7'b1100011: //B-type
					begin
						rd = 5'bX;
						rs1 = instIn[19:15];
						rs2 = instIn[24:20];
						fn3 = instIn[14:12];
						fn7 = 7'bX;
					end
				7'b0000011: //Load-type
					begin 
						rs1 = instIn[19:15];
						rs2 = instIn[24:20];
						rd = instIn[11:7];
						fn3 = instIn[14:12];
						fn7 = 7'bX;	
					end
				7'b0100011: //S-type
					begin
						rs1 = instIn[19:15];
						rs2 = instIn[24:20];
						rd = 5'bX;
						fn3 = instIn[14:12];
						fn7 = 7'bX;	
					end
				7'b0010011: //I-type
					begin
						rs1 = instIn[19:15];
						rs2 = 5'bX;
						rd = instIn[11:7];
						fn3 = instIn[14:12];
						if(fn3 == 3'b101)
							fn7 = instIn[31:24];
						else
							fn7 = 7'bX;
					end
				7'b0110011: //R-type
					begin
						rs1 = instIn[19:15];
						rs2 = instIn[24:20];
						rd = instIn[11:7];
						fn3 = instIn[14:12];
						fn7 = instIn[31:24];
					end
				default:
					begin
						rs1 = 5'bX;
						rs2 = 5'bX;
						rd = 5'bX;
						fn3 = 3'bX;
						fn7 = 7'bX;
					end
			endcase
		end
endmodule