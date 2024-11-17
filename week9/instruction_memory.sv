`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:36:38
// Design Name: 
// Module Name: instruction_memory
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

module instruction_memory #(parameter N=32, L=1024)(pc,reset,instr);
  input logic [N-1:0] pc;
  input logic reset;
  output logic [N-1:0] instr;
  logic [N-1:0] mem [L-1:0];
  assign instr = reset? 0: mem[pc];
endmodule

