`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 16:55:33
// Design Name: 
// Module Name: synchronous_flipflop_32bit
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


module synchronous_flipflop_32bit#(parameter N=32)
(input logic clk, input logic reset, input logic [N-1:0]pc_next, output logic [N-1:0]pc);
always @ (posedge clk)
begin
if(reset==1)
pc<=0;
else
pc<=pc_next;
end
endmodule
