module decode_unit(inp,opcode,rd,rs1,rs2,fun_3,fun_7,out);
input logic [31:0] inp;
	output logic [4:0] rd;
	output logic [4:0] rs1;
	output logic [4:0] rs2;
	output logic [31:0] out;
	output logic [6:0] opcode;
	output logic [2:0] fun_3;
	output logic [6:0] fun_7;
	always_comb
		begin
			opcode = inp[6:0];
			out = inp;
			case(opcode)
				7'b0110111: 
					begin
						rd = inp[11:7];
						rs1 = 5'b0;
						rs2 = 5'b0;
						fun_3 = 3'b0;
						fun_7 = 7'b0;
					end
				7'b0010111: //J
					begin
						rd = inp[11:7];
						rs1 = 5'b0;
						rs2 = 5'b0;
						fun_3 = 3'b0;
						fun_7 = 7'b0;
					end
				7'b0010111: //AUIPC
					begin
						rd = inp[11:7];
						rs1 = 5'b0;
						rs2 = 5'b0;
						fun_3 = 3'b0;
						fun_7 = 7'b0;
					end
				7'b1100111: //JALR
					begin
						rd = inp[11:7];
						rs1 = inp[19:15];
						rs2 = 5'b0;
						fun_3 = inp[14:12];
						fun_7 = 7'b0;
					end
				7'b1100011: //B-type
					begin
						rd = 5'b0;
						rs1 = inp[19:15];
						rs2 = inp[24:20];
						fun_3 = inp[14:12];
						fun_7 = 7'b0;
					end
				7'b0000011: //Load-type
					begin 
						rs1 = inp[19:15];
						rs2 = inp[24:20];
						rd = inp[11:7];
						fun_3 = inp[14:12];
						fun_7 = 7'bX;	
					end
				7'b0100011: //S-type
					begin
						rs1 = inp[19:15];
						rs2 = inp[24:20];
						rd = 5'bX;
						fun_3 = inp[14:12];
						fun_7 = 7'bX;	
					end
				7'b0010011: //I-type   
					begin
						rs1 = inp[19:15];
						rs2 = 5'b0;
						rd = inp[11:7];
						fun_3 = inp[14:12];
						if(fun_3 == 3'b101)
							fun_7 = inp[31:24];
						else
							fun_7 = 7'b0;
					end
				7'b0110011: //R-type   
					begin
						rs1 = inp[19:15];
						rs2 = inp[24:20];
						rd = inp[11:7];
						fun_3 = inp[14:12];
						fun_7 = inp[31:24];
					end
				default:
					begin
						rs1 = 5'b0;
						rs2 = 5'b0;
						rd = 5'b0;
						fun_3 = 3'b0;
						fun_7 = 7'b0;
					end
			endcase
		end
endmodule