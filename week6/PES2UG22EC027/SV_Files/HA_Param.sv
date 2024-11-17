`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 15:31:59
// Design Name: 
// Module Name: HA_Param
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


module HA_Param #(parameter N = 32)(input [N-1:0]a,b,
                                    output [N-1:0]sum);
assign sum = a + b;
endmodule
