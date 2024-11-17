`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 15:47:34
// Design Name: 
// Module Name: MUX
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


module MUX #(parameter N = 32)(input [N-1:0]a,b,
                               input Sel,
                               output [N-1:0] y
                                );
//assign y = (~Sel&a) | (Sel&b);
assign y = Sel ? b:a;             
endmodule
