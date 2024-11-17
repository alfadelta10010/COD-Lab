`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 12:19:23
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


module WB(MemtoReg,dataR,data,result);
input logic MemtoReg;
input logic [31:0] dataR,result;
output logic [31:0] data;

mux2_1 wb(.s(MemtoReg),.d0(result),.d1(dataR),.y(data));
  
endmodule
