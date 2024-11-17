module IF #(parameter N=32,Dl=1024)(
	input logic clk,
	input logic reset,
	input logic [N-1:0]pc_branch,
	input logic branch_zero,
	output logic [N-1:0]pc,
	output logic [N-1:0]inst
	);
	
	
	const bit[N-1:0] Four = 4;
	
	Dflipflop pc_counter (.clk(clk),.d(pc_next),.reset(reset),.q(pc));
	instruction_memory instruction_memory (.pc(pc),.reset(reset),.inst(inst));
	mux2_1 mux_pc ( .a(pcFour),.b(pc_branch),.s(branch_zero),.y(pc_next));
	halfadder add4 (.a(Four),.b(pc),.sum(pcFour));
	
	
endmodule