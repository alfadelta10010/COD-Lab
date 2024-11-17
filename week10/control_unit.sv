`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 20:18:07
// Design Name: 
// Module Name: control_unit
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


module control_unit(func3,func7,opcode,alu_operation,branch,regwrite,memread,memwrite,mem2reg,ALUsrc);
input logic [6:0] opcode,func7;
input logic [2:0] func3;
output logic [3:0] alu_operation;
logic [1:0] main_to_alu;
output logic branch,regwrite,memread,memwrite,mem2reg,ALUsrc;
main_controller g19 (.opcode(opcode), .branch(branch), .regwrite(regwrite), .memread(memread), .memwrite(memwrite), .mem2reg(mem2reg), .ALUsrc(ALUsrc), .ALUop(main_to_alu));
alu_control g20 (.func3(func3), .func7(func7), .aluop(main_to_alu), .aluoperation(alu_operation));
endmodule
