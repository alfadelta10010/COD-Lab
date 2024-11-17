`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 14:00:47
// Design Name: 
// Module Name: ALU_Control
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


module ALU_Control(
    input [1:0]strip_func7,
    input [2:0] func3,
    input [6:0] opcode,
    output reg [4:0] ALU_Ctrl
    );
always @(*)begin
ALU_Ctrl = 0;
if(opcode == 7'b0110011 | opcode == 7'b0010011)
    if(strip_func7 == 2'b01)begin  // m-type
        case(func3)
            3'b000:
                ALU_Ctrl = 5'b01011;
            3'b001:
                ALU_Ctrl = 5'b01100;
            3'b010:
                ALU_Ctrl = 5'b01101;
            3'b011:
                ALU_Ctrl = 5'b01110;
            3'b100:
                ALU_Ctrl = 5'b01111;
            3'b101:
                ALU_Ctrl = 5'b10000;
            3'b110:
                ALU_Ctrl = 5'b10001;
            3'b111:
                ALU_Ctrl = 5'b10010;
        endcase
    end
    else begin
        case(func3) 
            3'b000:begin    //ADD_SUB
                if(strip_func7 == 7'b10)
                    ALU_Ctrl = 5'b00001;
                else
                    ALU_Ctrl = 5'b00000;
            end
            3'b100:    //XOR
                ALU_Ctrl = 5'b00100;
            3'b110:    //or
                ALU_Ctrl = 5'b00011;
            3'b111:    //and
                ALU_Ctrl = 5'b0010;
            3'b001:    //SLL
                ALU_Ctrl = 5'b0111;
            3'b101:begin    //SR
                if(strip_func7 == 7'b10)
                    ALU_Ctrl= 5'b00110;
                else
                    ALU_Ctrl = 5'b00101;
            end
            3'b010:    //SLT
                ALU_Ctrl = 5'b01000;
            3'b011:    //SLTU
                ALU_Ctrl = 5'b01001;
            default:
                ALU_Ctrl = 0;
        endcase
    end 
else if(opcode == 7'b0000011 | opcode == 7'b0100011)
    ALU_Ctrl = 5'b00000;    
else if(opcode == 7'b0000011 | opcode == 7'b0100011)
    ALU_Ctrl = 5'b00000;    
else if(opcode == 7'b0110111 | opcode == 7'b0010111)
    ALU_Ctrl = 5'b01010;
else  
    ALU_Ctrl = 5'b00000;
end
endmodule
