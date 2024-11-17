`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 20:32:51
// Design Name: 
// Module Name: Ext_Memory
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


module Ext_Memory#(parameter Size = 32)(
    input [Size-1:0] Read_address,
    input [Size-1:0] Write_data,
    input [2:0] data_type,
    input read_en,write_en,
    output reg [Size-1:0] Data_Out
    );
reg [7:0] Mem [0:(2**Size)-1];

always@(*)begin
    Data_Out = 0;
    if(read_en)begin
        case(data_type)
            3'b000:begin  //load byte signed
               Data_Out = {{24{Mem[Read_address][7]}},Mem[Read_address]};
            end
            3'b010:begin  //half-word signed
               Data_Out = {{16{Mem[Read_address][15]}},Mem[Read_address+1],Mem[Read_address]};
            end
            3'b011:begin  //word
               Data_Out = {Mem[Read_address+3],Mem[Read_address+2],Mem[Read_address+1],Mem[Read_address]};
            end
            3'b100:begin  //byte Unsigned
               Data_Out = {24'b0,Mem[Read_address]};
            end
            3'b110:begin  //half-word Unsigned
               Data_Out = {16'b0,Mem[Read_address+1],Mem[Read_address]};
            end     
            default: Data_Out = 0;       
        endcase    
    end
    else if(write_en)begin
        case(data_type)
            3'b000:begin // Store Byte
                Mem[Read_address] = Write_data[7:0];
            end
            3'b010:begin  //store halfword
                Mem[Read_address+1] = Write_data[15:8];
                Mem[Read_address] = Write_data[7:0];
            end
            3'b011:begin  //store word
                Mem[Read_address+3] = Write_data[31:24];
                Mem[Read_address+2] = Write_data[23:16];
                Mem[Read_address+1] = Write_data[15:8];
                Mem[Read_address] = Write_data[7:0];
            end
            default:begin
                Mem[Read_address+3] = Write_data[31:24];
                Mem[Read_address+2] = Write_data[23:16];
                Mem[Read_address+1] = Write_data[15:8];
                Mem[Read_address] = Write_data[7:0];
                end
        endcase
    end
    else 
        Data_Out = 32'b0;
end
endmodule
