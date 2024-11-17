`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:11:22
// Design Name: 
// Module Name: MEM
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

module MEM(ALU_res,mem_read,mem_write,data2,data_out);
	input logic [31:0] data2,ALU_res;
	input logic mem_read,mem_write;
	output logic [31:0] data_out;
	logic [0:31] memory [31:0];

	assign data_out = mem_read ? memory[ALU_res] : 32'b0; 

always@(posedge mem_write)
	begin
		memory[ALU_res] = data2;
	end
endmodule
