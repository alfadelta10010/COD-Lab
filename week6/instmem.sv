`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 14:26:33
// Design Name: 
// Module Name: inst_mem
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


module inst_mem #(parameter WIDTH = 32)  
  ( input logic reset, 
    input logic [WIDTH-1:0]addr,
    output logic [WIDTH-1:0]inst
    );
logic [31:0] mem [0:1023];
//always_comb
//begin
//if(reset)
//inst=0;
//else
//inst= mem[addr];
//end
//endmodule

assign inst =  reset ? 32'b0 : mem [addr];
endmodule

      
 
