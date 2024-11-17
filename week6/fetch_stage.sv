module fetch_stage #(parameter N=32)(input logic pc_src,clk,reset, input logic [N-1:0]pc_imm, output logic[N-1:0]instr,pc);

	wire pc_next;
	
	fulladder unit_1(.a(pc),.b(32'd4),.sum(pc_four));
	
	mux_2_1 unit_2(.a(pc_four),.b(pc_imm),.s(pc_src),.y(pc_next));
	
	pc unit_3(.clk(clk),.pc_next(pc_next),.pc(pc),.reset(reset));
	
	instr_mem (.addr(pc),.instr(instr),.reset(reset));
	
endmodule
