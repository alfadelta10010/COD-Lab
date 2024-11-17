`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2024 14:50:06
// Design Name: 
// Module Name: ifstage_1
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


module ifstage_1(input logic clk, rst, output logic [31:0] inst);
logic [31:0] pcin;
logic [31:0] pcnext;
regis_1 pc( .clk(clk), .rst(rst), .din(pcnext), .q(pcin));
adder_1 pcinc( .a(pcin), .sum(pcnext));
mem_1 m32( .clk(clk), .addr(pcin), .dout(inst));
endmodule
