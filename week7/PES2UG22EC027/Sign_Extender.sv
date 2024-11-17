`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 15:16:45
// Design Name: 
// Module Name: Sign_Extender
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


module Sign_Extender#(parameter Inst_Size = 32)(
    input logic [11:0] Imm12,
    input logic [19:0] Imm20,
    input logic control,
    input logic jal,
    output logic [Inst_Size-1:0] Ext_Imm
);
    wire [20:0] Imm21 = {Imm20[19:0], 1'b0}; // Extend Imm20 with a zero bit

    always @(*) begin
        if (~control) begin
            Ext_Imm = {{20{Imm12[11]}}, Imm12}; // Sign extend immediate for I-type/S-type
        end else if (jal) begin
            Ext_Imm = {{11{Imm20[19]}}, Imm21}; // JAL immediate extension
        end else begin
            Ext_Imm = {{12{Imm20[19]}}, Imm20}; // Other immediate types (U-type)
        end
    end
endmodule