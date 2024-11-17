`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 20:52:18
// Design Name: 
// Module Name: WB_Stage
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


module WB_Stage#(parameter Size = 32)(
    input [Size-1:0] ALU_Data, Mem_Data, PC_4,
    input [1:0] Data_wb_control,
    output reg [Size-1:0] Data_to_reg
);

always @(*) begin
    case (Data_wb_control)
        2'b00: Data_to_reg = ALU_Data;
        2'b01: Data_to_reg = Mem_Data;
        2'b10: Data_to_reg = PC_4;
        default: Data_to_reg = 0;
    endcase
end
endmodule
