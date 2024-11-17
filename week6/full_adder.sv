`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 14:14:31
// Design Name: 
// Module Name: full_adder
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



module adder #(parameter N = 32)(a, b, cin, s, cout);
	input logic [N-1:0] a;
	input logic [N-1:0] b;
	output logic [N-1:0] s;
	input logic cin;
	output logic cout;
	assign {cout, s} = a + b + cin;
endmodule

 
