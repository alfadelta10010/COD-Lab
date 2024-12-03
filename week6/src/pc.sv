module pc(
	output logic [31:0] new_addr,
	input logic [31:0] old_addr,
	input logic [31:0] branch_addr,
	input bit PCsrc,
	input bit clk
	);

	logic [2:0] offset = 3'd4;
	
	initial new_addr = -32'd4;
	
	always@(posedge clk) begin
	   case(PCsrc)
	   1'b0: new_addr = old_addr + offset;
	   1'b1: new_addr = branch_addr;
	   default: new_addr = 'b0;
	   endcase
	end
endmodule
