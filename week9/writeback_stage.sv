`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 09:35:08
// Design Name: 
// Module Name: writeback_stage
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


module writeback_stage #(parameter N=32)(alu_result,mem_result,mem_to_reg,wd);
input logic [N-1:0] alu_result, mem_result;
input logic mem_to_reg;
output logic [N-1:0] wd;
mux g11 (.a(alu_result), .b(mem_result), .s(mem_to_reg), .y(wd));
endmodule
