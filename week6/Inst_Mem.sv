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
	
	assign dout = {mem [addr+3], mem [addr+2], mem [addr+1], mem [addr]};
endmodule