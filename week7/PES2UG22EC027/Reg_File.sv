`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 14:51:01
// Design Name: 
// Module Name: Reg_File
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


module Reg_File#(parameter Inst_Size = 32)(
    input logic [4:0] rs1, rs2, rd,
    input logic wr_en,
    input logic [Inst_Size-1:0] write_data,
    output logic [Inst_Size-1:0] rs1_data, rs2_data,
    output logic [Inst_Size-1:0] x0, x1, x2, x3, x4, x5, x6, x7,
    output logic [Inst_Size-1:0] x8, x9, x10, x11, x12, x13, x14, x15,
    output logic [Inst_Size-1:0] x16, x17, x18, x19, x20, x21, x22, x23,
    output logic [Inst_Size-1:0] x24, x25, x26, x27, x28, x29, x30, x31
);
    logic [31:0] register[0:31];

    // Initialize registers to zero
    initial begin
        for (int i = 0; i < 32; i++) begin
            register[i] = 32'b0; // Initialize all registers to zero
        end
    end

    // Assign outputs for individual registers
assign {x31,x30,x29,x28,x27,x26,x25,x24,x23,x22,x21,x20,x19,x18,x17,x16,
            x15,x14,x13,x12,x11,x10,x9,x8,x7,x6,x5,x4,x3,x2,x1,x0} = 
            {register[31],register[30],register[28],register[27],register[26],
            register[25],register[24],register[23],register[22],register[21],register[20],register[19],register[18],
            register[17],register[16],register[15],register[14],register[13],register[12],register[10],register[9],
            register[8],register[7],register[6],register[5],register[4],register[3],register[2],register[1],
            register[0]};

    always @(*) begin
        rs1_data = register[rs1];
        rs2_data = register[rs2];
    end

    always @(*) begin
        if (wr_en && rd != 5'b00000) begin // Don't write to register zero
            register[rd] <= write_data;
        end
    end
endmodule
