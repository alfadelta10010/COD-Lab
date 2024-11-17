`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 14:09:01
// Design Name: 
// Module Name: Asynchronous_FF
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


module Asynchronous_FF(
    input d,
    input clk,reset,
    output reg q
);
always_ff@(posedge clk or posedge reset)begin
    if(reset)begin
        q <= 0;
    end
    else begin 
        q <= d;
    end
end
endmodule
