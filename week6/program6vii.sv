module Inst_Mem#(parameter XLEN = 5)(pcin, dout);
	input logic [31:0] pcin;
	logic [XLEN - 1 : 0] addr;
	output logic [31:0] dout;	
	logic [7:0] mem [2**XLEN-1 : 0] = '{8'bX, 8'bX, 8'bX, 8'bX,
				   8'bX, 8'bX, 8'bX, 8'bX,
				   8'bX, 8'bX, 8'bX, 8'bX,
				   8'hX, 8'hX, 8'hX, 8'hX,
				   8'b00, 8'b00, 8'b00, 8'b00,
				   8'h00, 8'h84, 8'h89, 8'h33,
				   8'h10, 8'h10, 8'h04, 8'h93,
				   8'h01, 8'h00, 8'h04, 8'h13};
	assign addr = pcin[XLEN-1:0];
	/*
									imm	   rs1   f3   rd    op
    0:        01000413        000000010000 00000 000 01000 0010011 (I)
    4:        10100493        000100000001 00000 000 01001 0010011 (I)
    8:        00848933        0000000 01000 01001 000 10010 0110011 (R)
	                              f7    rs2
	*/
	assign dout = {mem [addr+3], mem [addr+2], mem [addr+1], mem [addr]};
endmodule