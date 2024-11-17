// vi)Write a SV program for Instruction Fetch Stage

module inst_fetch_stage #(parameter N=32) (input logic clk,reset,pc_sel,input logic [N-1:0] pc_imm, output logic [N-1:0] inst);
wire [N-1:0] pc_in, addr, pc_next;


program_counter g1(pc_in,clk,reset,addr);
inst_mem g2(addr,inst);
half_adder g3(addr,pc_next);
mux_21 g4(pc_next,pc_imm,pc_sel,pc_in);

endmodule