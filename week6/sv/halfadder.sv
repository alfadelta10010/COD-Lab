`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2024 17:42:39
// Design Name: 
// Module Name: halfadder
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


module halfadder #(parameter N=32)(input logic [N-1:0]a,b, output logic [N-1:0]sum, output logic cout);
assign {cout,sum}=a+b;
endmodule
