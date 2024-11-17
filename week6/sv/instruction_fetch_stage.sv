`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 16:59:27
// Design Name: 
// Module Name: instruction_fetch_stage
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


module instruction_fetch_stage #(parameter N=32)(input logic sel,clk,reset,output logic [N-1:0]instr);
logic [N-1:0] mux_to_pc,pc_to_im,pc_4,shifted_imm,adder_to_mux;
mux #(32) g1(.a(pc_4), .b(adder_to_mux), .s(sel), .y(mux_to_pc));
halfadder #(32) g2(.a(4), .b(pc_to_im), .sum(pc_4), .cout(0));
synchronous_flipflop_32bit #(32) g3(.clk(clk), .reset(reset), .pc_next(mux_to_pc), .pc(pc_to_im));
instruction_memory #(32) g4(.reset(reset), .addr(pc_to_im), .instr(instr));
halfadder #(32) g18 (.a(pc_to_im), .b(shifted_imm), .sum(adder_to_mux));
endmodule
