`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 15:00:06
// Design Name: 
// Module Name: IF_Stage
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


module IF_Stage#(parameter AddrSize=32,Inst_Size=32)(input [AddrSize-1:0] Added_PC_from_Jump,Added_PC_from_Branch,
input clk,reset,PC_Select,Jump_Sel,output [31:0] Inst,PC_Temp);
wire [AddrSize-1:0]PC_curr,PC_NEW,jump;

HA_Param #(AddrSize) add(.a(PC_curr),.b(1),.sum(PC_Temp));
MUX #(AddrSize) Select_Jump(.a(Added_PC_from_Branch),.b(Added_PC_from_Jump),.Sel(Jump_Sel),.y(jump));
MUX #(AddrSize) Select_PC(.a(PC_Temp),.b(jump),.Sel(PC_Select),.y(PC_NEW));
Program_Counter #(AddrSize) PC(.PC_NEXT(PC_NEW),.PC_Curr(PC_curr),.clk(clk),.reset(reset));
Inst_Mem #(AddrSize,Inst_Size) Inst_Memory(.addr(PC_curr),.inst(Inst));

endmodule