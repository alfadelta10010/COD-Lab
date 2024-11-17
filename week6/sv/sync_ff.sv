`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 12:39:39
// Design Name: 
// Module Name: sync_ff
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


module sync_ff(
    input logic clk,       // Clock input
    input logic reset,     // Synchronous reset input
    input logic d,         // Data input
    output logic q         // Output
);

    // Always block for the flip-flop behavior
    always_ff @(posedge clk) begin
        if (reset) begin
            q <= 1'b0;     // Reset the output to 0 synchronously
        end else begin
            q <= d;        // Update the output with input 'd' on clock edge
        end
    end

endmodule

