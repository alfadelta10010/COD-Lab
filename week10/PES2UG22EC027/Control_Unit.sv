`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 13:22:28
// Design Name: 
// Module Name: Control_Unit
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


module Control_Unit(
    input [2:0] func3,
    input [6:0] opcode,
    output reg REG_Write,PC_Src,ALU_Src,MEM_Read,Mem_Write,Branch,Imm_Sel,Jump_Sel,jal,
    output reg [1:0]Mem_to_REG,
    output reg [2:0]Mem_Read_Type
);

always @(*)begin
    REG_Write = 0;
    ALU_Src = 0;
    MEM_Read = 0;
    Mem_Write = 0;
    Mem_to_REG = 0;
    Branch = 0;
    Mem_Read_Type = 0;
    PC_Src = 0;
    Imm_Sel = 0;
    Jump_Sel = 0;
    jal = 0;
    case(opcode[6:0])
        7'b0110011:begin    //R-type
            REG_Write = 1;
            ALU_Src = 0;
            MEM_Read = 0;
            Mem_Write = 0;
            Mem_to_REG = 2'b00;
            Branch = 0;
            Mem_Read_Type = 0;
            Imm_Sel = 0;
            PC_Src = 0;
            Jump_Sel = 0;
            jal = 0;
        end
        7'b0010011:begin    //I-type
            REG_Write = 1;
            ALU_Src = 1;
            MEM_Read = 0;
            Mem_Write = 0;
            Mem_to_REG = 2'b00;
            Branch = 0;
            Mem_Read_Type = 0;
            Imm_Sel = 0;
            PC_Src = 0;
            Jump_Sel = 0;
            jal = 0;
        end
        7'b0000011:begin    //Load-type
            REG_Write = 1;
            ALU_Src = 1;
            MEM_Read = 1;
            Mem_Write = 0;
            Mem_to_REG = 2'b01;
            Branch = 0;
            Imm_Sel = 0;
            PC_Src = 0;
            Jump_Sel = 0;
            jal = 0;
            if(func3 == 0)  //load byte
                Mem_Read_Type = 3'b000;
            else if(func3 == 1)  //load half
                Mem_Read_Type = 3'b010;
            else if(func3 == 2)  //load word
                Mem_Read_Type = 3'b011;
            else if(func3 == 4)  //unsigned load byte
                Mem_Read_Type = 3'b100;
            else if(func3 == 5)  //unsiged load half
                Mem_Read_Type = 3'b110;
            else
                Mem_Read_Type = 0;
        end
       7'b0100011:begin    //S-type
            REG_Write = 0;
            ALU_Src = 1;
            MEM_Read = 0;
            Mem_Write = 1;
            Mem_to_REG = 2'b00;
            Branch = 0;
            Imm_Sel = 0;
            PC_Src = 0;
            Jump_Sel = 0;
            jal = 0;
            if(func3 == 0)  //store byte
                Mem_Read_Type = 3'b000;
            else if(func3 == 1)  //store half
                Mem_Read_Type = 3'b010;
            else if(func3 == 2)  //store word
                Mem_Read_Type = 3'b011;
            else
                Mem_Read_Type = 0;
        end
        7'b1100011:begin    //B-type
            REG_Write = 0;
            ALU_Src = 1;
            MEM_Read = 0;
            Mem_Write = 0;
            Mem_to_REG = 2'b00;
            Branch = 1;
            Imm_Sel = 0;
            Mem_Read_Type = 0;
            PC_Src = 0;
            jal = 0;
            Jump_Sel = 0;
        end
        7'b1101111:begin    //J-type
            REG_Write = 1;
            ALU_Src = 1;
            PC_Src = 1;
            MEM_Read = 1;
            Mem_Write = 0;
            Mem_to_REG = 2'b10;
            Branch = 0;
            Mem_Read_Type = 0;
            Imm_Sel = 1;
            Jump_Sel = 1;
            jal = 1;
        end
        7'b1100111:begin    //JAL-R
            REG_Write = 1;
            ALU_Src = 1;
            PC_Src = 1;
            MEM_Read = 0;
            Mem_Write = 0;
            Mem_to_REG = 2'b10;
            Branch = 1;
            Mem_Read_Type = 0;
            Imm_Sel = 1;
            Jump_Sel = 1;
            jal = 0;
        end
        7'b0110111:begin    //LUI
            REG_Write = 1;
            ALU_Src = 1;
            MEM_Read = 0;
            Mem_Write = 0;
            Mem_to_REG = 0;
            Branch = 0;
            Mem_Read_Type = 0;
            Imm_Sel = 0;
            Jump_Sel = 0;
            PC_Src = 0;
            jal = 0;
        end
        7'b0010111:begin    //auipc
            REG_Write = 1;
            ALU_Src = 1;
            PC_Src = 1;
            MEM_Read = 0;
            Mem_Write = 0;
            Mem_to_REG = 0;
            Branch = 0;
            Mem_Read_Type = 0;
            Imm_Sel = 1;
            Jump_Sel = 0;
            jal = 0;
        end
        default:begin
                REG_Write = 0;
                ALU_Src = 0;
                MEM_Read = 0;
                Mem_Write = 0;
                Mem_to_REG = 0;
                Branch = 0;
                Mem_Read_Type = 0;
                PC_Src = 0;
                Imm_Sel = 0;
                Jump_Sel = 0;
                jal = 0;
    end
    endcase
end
endmodule
