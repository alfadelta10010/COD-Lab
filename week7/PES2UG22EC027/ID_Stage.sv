`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 14:06:39
// Design Name: 
// Module Name: ID_Stage
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


module ID_Stage#(parameter Inst_Size= 32) (
input logic [Inst_Size-1:0]Inst,
input logic wr_en,
input logic Imm_Sel,jal,
input logic[Inst_Size-1:0] write_data,
output logic [Inst_Size-1:0] rs1_data,rs2_data,
output logic [Inst_Size-1:0]Ext_Imm,
output logic[6:0] func7,
output logic [1:0]strip_func7,
output logic[2:0]func3,
output logic[6:0] opcode,
output logic [Inst_Size-1:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31
);

wire[4:0] rs1,rs2,rd;
wire[11:0] Imm;
wire[19:0] Imm20;

Inst_Decoder Decoder(Inst,rs1,rs2,rd,Imm,Imm20,func7,strip_func7,func3,opcode);
Sign_Extender #(32) Ext(Imm,Imm20,Imm_Sel,jal,Ext_Imm);
Reg_File#(32)Reg_file(rs1,rs2,rd,wr_en,write_data,rs1_data,rs2_data,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31);

endmodule
