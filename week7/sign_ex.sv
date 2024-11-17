`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:07:37
// Design Name: 
// Module Name: sign_ex
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module sign_ex(opcode, imm, imm_new,imm_new_shift);
	input logic [6:0] opcode;
	input logic [31:0] imm;
	output logic [31:0] imm_new, imm_new_shift;
	always_comb
		case(opcode)
			7'b0110111: begin //LUI 
				imm_new[31:12] = imm[31:12];
				imm_new[11:0] = 12'b0;
			end
			7'b0010111: begin //AUIPC
				imm_new[31:12] = imm[31:12];
				imm_new[11:0] = 12'b0;
			end
			7'b1101111: begin //JAL
              imm_new = {{20{imm[31]}}, imm[19:12], imm[13], imm[30:21], 1'b0};
			end
			7'b1100111: begin //JALR
				imm_new[11:0] = imm[31:20];
            imm_new[31:12] = {20{imm[31]}};
			end
			7'b1100011: begin 
				imm_new = {{20{imm[31]}}, imm[7], imm[30:25], imm[11:8], 1'b0};
			end
			7'b0000011: begin
				imm_new = {{20{imm[31]}}, imm[31:20]};
			end
			7'b0010011: begin
				imm_new = {{20{imm[31]}}, imm[31:20]};
			end
			7'b0100011: begin
              imm_new = {{20{imm[31]}}, imm[31:25], imm[11:7]};
			end
			default:
				imm_new = 32'bX;
		endcase
		
		assign imm_new_shift = imm_new << 1;
endmodule
