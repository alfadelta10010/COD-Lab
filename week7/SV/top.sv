`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2024 11:32:20
// Design Name: 
// Module Name: top
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

module decode_stage_top (
    input  logic        clk, rst, reg_wr,   // Clock, Reset, and Register Write Enable
    input  logic [31:0] instruction,        // 32-bit Instruction input
    input  logic [31:0] wd,                 // Write data input for register file
    output logic [31:0] reg1, reg2          // Register data outputs
);

    // Internal signals for decoder outputs
    logic [4:0] rs1, rs2, rd;
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [31:0] i_type_imm, s_type_imm, b_type_imm, u_type_imm, j_type_imm;

    // Instantiate the decoder module
    decoder u_decoder (
        .instruction(instruction),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .i_type_imm(i_type_imm),
        .s_type_imm(s_type_imm),
        .b_type_imm(b_type_imm),
        .u_type_imm(u_type_imm),
        .j_type_imm(j_type_imm)
    );

    // Instantiate the register file module
    regfile u_regfile (
        .clk(clk),
        .rst(rst),
        .reg_wr(reg_wr),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .wd(wd),
        .reg1(reg1),
        .reg2(reg2)
    );

endmodule

