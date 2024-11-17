`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:06:16
// Design Name: 
// Module Name: branch_adder
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
module branch_adder(pc_out, imm_new_shift, branch_imm);
    input logic [31:0] pc_out, imm_new_shift;
    output logic [31:0] branch_imm;
    assign branch_imm = imm_new_shift + pc_out;
endmodule
