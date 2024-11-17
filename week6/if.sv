`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 15:29:28
// Design Name: 
// Module Name: topmodule_IF
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


module topmodule_IF #(parameter WIDTH=32)( 
     input logic clk,     
     input logic reset,              
     input logic [31:0]pc_imm,
     input logic pcsrc,
     output logic [31:0]inst);
     
     logic [31:0] pc_next;
     logic [31:0] pc;
     logic [31:0] x = 32'd4;
     logic [31:0] pc4;

mux mux_if(pc4,pc_imm,pcsrc,pc_next);
pc pc1(pc_next,clk,reset,pc);
inst_mem codememory(reset,pc,inst);
adder adder1(pc,x,pc4);
//adder adder1(pc,32'd4,pc4);


endmodule
