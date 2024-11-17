`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2024 14:38:32
// Design Name: 
// Module Name: data_memory
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


module data_memory #(parameter N=32)(wd,alu_result,memread,memwrite,reset,mem_result);
input logic [N-1:0] wd,alu_result;
input logic memread,memwrite,reset;
output logic [N-1:0] mem_result;
logic [N-1:0] mem [0:1023];
always @(*)
begin
if (reset) 
begin
for (int i = 0; i < 1024; i++) 
begin
mem[i] <= {N{1'b0}};
end
end
end
endmodule
