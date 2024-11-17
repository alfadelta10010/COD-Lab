`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 19:04:42
// Design Name: 
// Module Name: syncff
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
module syncff #(parameter WIDTH = 2)(
    input logic clk,                // Single clock input
    input logic [WIDTH-1:0] d,      // Data input
    output logic [WIDTH-1:0] q      // Data output (register)
);
    always_ff @(posedge clk) begin
        q <= d;                     // Assign data to output on clock edge
    end
endmodule
