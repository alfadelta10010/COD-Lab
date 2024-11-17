`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 15:15:11
// Design Name: 
// Module Name: sign_extention
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


module sign_extention(immi,ext_immi);
input logic [11:0]immi;
output logic [31:0]ext_immi;
always@(*)
begin
ext_immi= {{20{immi[11]}},immi[11:0]};
end
endmodule
