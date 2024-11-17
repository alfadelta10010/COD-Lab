`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 19:03:38
// Design Name: 
// Module Name: asyncff
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
module asyncff #(parameter WIDTH = 32)(
    input logic [WIDTH-1:0] pc_next, // Next value to store in the flip-flop
    input logic clk,                 // Clock signal
    input logic reset,               // Synchronous reset signal
    output logic [WIDTH-1:0] pc      // Current value stored in the flip-flop
);
    always_ff @(posedge clk) begin 
        if (reset) 
            pc <= 0;                 // Reset the output to 0
        else 
            pc <= pc_next;           // Store the next value
    end
endmodule