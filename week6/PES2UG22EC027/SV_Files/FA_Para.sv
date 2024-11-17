`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 15:38:20
// Design Name: 
// Module Name: FA_Para
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


module FA_Para #(parameter N = 32)(input [N-1:0]a,b,
                                    input cin,
                                    output [N-1:0]sum,carry);
assign {cout,sum} = a + b + cin;

endmodule
