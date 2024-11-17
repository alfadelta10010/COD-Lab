module if_stage #(parameter N=32)(input logic clk,and_out,reset, input logic [N-1:0]b_muxin,output logic [N-1:0]if_out,pc,pc_new);

wire pc_next;
adder #(N) add (.sum(pc_new),.b(4),.cin(0),.a(pc));
mux21 #(N) mu (.a(pc_new),.b(b_muxin),.control(and_out),.y(pc_next));
Program_Counter #(N) programc (.pc_next(pc_next),.pc(pc),.clk(clk),.reset(reset));
instruction_memory im (.addr(pc),.inst(if_out)); //,.clk(clk));
endmodule
