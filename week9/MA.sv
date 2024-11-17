`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 11:43:37
// Design Name: 
// Module Name: MA
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


module MA(clk,reg2,result, MemRead, MemWrite,dataR,zero,Branch,b_sel);
input bit clk;
input logic [31:0] reg2,result;
input logic  MemRead, MemWrite;
output logic [31:0] dataR;
input logic zero,Branch;
output logic b_sel;
DataMem mem(.clk(clk),.dataW(reg2),.addr(result),.memR(MemRead),.memW(MemWrite),.dataR(dataR));
AND_gate anding(.a(Branch),.b(zero),.y(b_sel));
endmodule
