`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 14:39:16
// Design Name: 
// Module Name: EX_Stage
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


module EX_Stage#(parameter Size = 32)(
    input [Size-1:0] rs1_data,rs2_data,EX_Imm,PC_Curr,
    input PC_Src,ALU_Src,Branch_Control,
    input [4:0]ALU_Control,
    input [2:0]func3,
    output Branch_out,
    output [Size-1:0]ALU_out,Added_PC_from_Branch
    );
wire [Size-1:0]data2_to_ALU;
wire [Size-1:0]data1_to_ALU;
MUX #(Size) PC_Sel(rs1_data,PC_Curr,PC_Src,data1_to_ALU);
MUX #(Size) Imm_Sel(rs2_data,EX_Imm,ALU_Src,data2_to_ALU);
ALU #(Size) alu(data1_to_ALU,data2_to_ALU,ALU_Control,ALU_out);
Branch_Comp #(Size) Comparator(data1_to_ALU,data2_to_ALU,func3,Branch_Control,Branch_out);
HA_Param #(Size) add(.a(PC_Curr),.b((EX_Imm<<1)),.sum(Added_PC_from_Branch));

endmodule
