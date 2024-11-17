`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 21:58:48
// Design Name: 
// Module Name: async_reset_ff
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

module async_reset_ff(input logic clk, reset, d, output logic q);
  always_ff @(posedge clk or posedge reset)
    if (reset)
      q <= 0;
    else
      q <= d;
endmodule
