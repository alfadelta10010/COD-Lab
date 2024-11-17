module info_fetch #(parameter n=32)(
	input logic [n-1:0] pc_imm,
	output logic [n-1:0] instr,
	output logic [n-1:0] pc_4,
	input logic rst,
	input logic sel,
	input logic clk
);
logic [n-1:0] four;
 logic [n-1:0] pc;
 logic overflow;
logic [n-1:0] zero;
assign four=4;
assign zero=0;
mux2 m1(.a(pc_4),.b(pc_imm),.sel(sel),.out(pc));
pc p1(.clk(clk),.rst(rst),.pc(pc),.pc_next(pc_next));
adder add1(.a(four),.b(pc_next),.cin(zero),.sum(pc_4),.cout(overflow));
mem_block mem(.pc(pc_next),.instr(instr),.rst(rst));
endmodule

	
	
