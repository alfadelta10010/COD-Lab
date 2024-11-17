`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:01:25
// Design Name: 
// Module Name: sync_reset_ff
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

module sync_reset_ff(input logic clk, reset, d, output logic q);
  always_ff @(posedge clk)
    if (reset)
      q <= 0;
    else
      q <= d;
endmodule
