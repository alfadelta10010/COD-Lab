`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 19:13:35
// Design Name: 
// Module Name: Mux21
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
module Mux21 #(parameter N = 32) (a, b, s, y);
	input logic [N-1:0] a; // 0
	input logic [N-1:0] b; // 1
	input logic s;
	output logic [N-1:0] y;
	assign y = s ? b : a;
endmodule