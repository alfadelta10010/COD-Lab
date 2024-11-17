module instruction_fetch #(parameter N=32) (clk, reset, pc_branch, pc_old, pc_src, instruction);
    input logic clk, reset, pc_src;
    input logic[N-1:0] pc_branch;
    output logic[N-1:0] instruction;
    wire[N-1:0] pc_next, pc_new;
    output logic[N-1:0] pc_old;
    
    instruction_memory mem(reset, pc_old, instruction);  
    fulladder fa(1, pc_old, 0, pc_new, );
    mux21 mux1(pc_new, pc_branch, pc_src, pc_next);
    program_counter pc(clk, reset, pc_next, pc_old);

endmodule
