`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:12:07
// Design Name: 
// Module Name: WB
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

module WB(ALU_res,data_out,wb_out,mem_reg);
	input logic [31:0] ALU_res,data_out;
	input logic mem_reg;
	output logic [31:0]wb_out;
	assign wb_out = mem_reg ? data_out : ALU_res;
endmodule
