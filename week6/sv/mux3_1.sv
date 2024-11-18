`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 12:32:47
// Design Name: 
// Module Name: mux3_1
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

module mux31 #(parameter N = 32) (a, b, c, s, y);
	input logic [N-1:0] a; //00
	input logic [N-1:0] b; //01
	input logic [N-1:0] c; //10
	input logic [1:0] s;
	output logic [N-1:0] y;
	assign y = s[1] ? c : (s[0] ? b : a);
endmodule
