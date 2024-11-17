`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 19:07:02
// Design Name: 
// Module Name: Mux31
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
module Mux31 #(parameter N = 32) (a, b, c, s, y);
    input logic [N-1:0] a; // Input 0
    input logic [N-1:0] b; // Input 1
    input logic [N-1:0] c; // Input 2
    input logic [1:0] s;   // 2-bit select signal
    output logic [N-1:0] y;
    
    always_comb begin
        case (s)
            2'b00: y = a; // Select input a
            2'b01: y = b; // Select input b
            2'b10: y = c; // Select input c
            default: y = {N{1'b0}}; // Default to 0
        endcase
    end
endmodule