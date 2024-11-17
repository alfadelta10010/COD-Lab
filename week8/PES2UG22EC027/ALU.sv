`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 11:55:29
// Design Name: 
// Module Name: ALU
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


module ALU#(parameter Size = 32)(
input [Size-1:0] a,b,
input [4:0]Control,
output reg [Size-1:0] out
    );
wire signed [Size-1:0] as=a;
wire signed [Size-1:0] bs=b;
reg [(2*Size)-1:0] product;
always@(*)begin
    case(Control)
        5'b00000: begin   //Add
            out = as + bs;
        end
        5'b00001:begin    //Sub
            out = as - bs;
        end
        5'b00010:begin    //AND
            out = a & b;
        end
        5'b00011:begin    //OR
            out = a | b;
        end
        5'b00100:begin    //XOR
            out = a ^ b;
        end
        5'b00101:begin    //Shift Right Logical SRL
            out = a >> b;
        end
        5'b00110:begin    //Shift Right Arith  SRA
            out = a >>> b;
        end
        5'b00111: begin   //Shift Left Logical SLL
            out = a << b;
        end
        5'b01000:begin    //Set less than
            out = (as < bs) ? {Size{1'b0}} | 1 : {Size{1'b1}};
        end
        5'b01001:begin    //Set less than Unsigned
            out = (a < b) ? {Size{1'b0}} | 1 : {Size{1'b1}};
        end
        5'b01010:    //auipc & lui
            out = as + (bs<<12);
        5'b01011: begin// Mul
            product = (as * bs);
            out = product[Size-1:0];
        end
        5'b01100: begin//MUL High MULH
            product = (as * bs);
            out = product[(2*Size)-1:Size];    
        end
        5'b01101: begin//MUL High MULSU
            product = (as * $signed({1'b0, b}));
            out = product[(2*Size)-1:Size];    
        end
        5'b01110:begin
            product = (a * b);
            out = product[(2*Size)-1:Size];            
        end
        5'b01111:   //div
            out = as/bs;
        5'b10000:   // Div U
            out = a/b;
        5'b10001: // rem
            out = as % bs;
        5'b10010: //rem U
            out = a % b;
        default:
            out = 1;
    endcase
end    
endmodule
