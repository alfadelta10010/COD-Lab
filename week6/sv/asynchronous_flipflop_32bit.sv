`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:10:35
// Design Name: 
// Module Name: asynchronous_flipflop_32bit
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


module asynchronous_flipflop_32bit#(parameter N=32)
(input logic clk, input logic reset, input logic [N-1:0]pc_next, output logic [N-1:0]pc);
always @ (posedge clk,posedge reset)
begin
if(reset==1)
pc<=0;
else
pc<=pc_next;
end
endmodule
