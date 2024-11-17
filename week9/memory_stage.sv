`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 09:24:46
// Design Name: 
// Module Name: memory_stage
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


module memory_stage #(parameter N=32)(wd,alu_result,memread,memwrite,reset,mem_result);
input logic [N-1:0] wd,alu_result;
input logic memread,memwrite,reset;
output logic [N-1:0] mem_result;
logic [N-1:0] mem [0:1023];
always 
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
