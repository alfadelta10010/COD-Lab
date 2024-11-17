`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:09:38
// Design Name: 
// Module Name: ALU_mod
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

module ALU_mod(data1,mux_out1,ALU_op,ALU_res,zero);
input logic [31:0] data1;
input logic [31:0] mux_out1;
input logic [3:0] ALU_op;
output logic zero;
output logic [31:0] ALU_res;

always_comb 
begin
	case(ALU_op)
	4'b0000 : //AND	
		ALU_res = data1 & mux_out1;	
	4'b0001 : //OR	
		ALU_res = data1 | mux_out1;	
	4'b0010 : //ADD
		ALU_res = data1 + mux_out1;	
	4'b0110 : //SUB	
		ALU_res = data1 - mux_out1;	
	default 
		ALU_res = 32'b0;
	endcase
	
	if(ALU_res==0)
		zero = 1;
	else
		zero = 0;
end
endmodule
