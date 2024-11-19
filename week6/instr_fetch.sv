module instr_fetch(
    input bit clk,reset,
    input logic branch_sel,
    input logic [31:0] branch_ip,
    output logic [31:0] instr,pc_present,pc_next
    );
    
    logic [31:0] pc_i;
    
    instr_mem mem1(.pc_i(pc_present), .data_o(instr));
    adder add1(.a(4), .b(pc_present), .sum(pc_next));
    mux21 mux1(.in1(pc_next), .in2(branch_ip), .select(branch_sel), .y(pc_i));
    pc_reg pc1(.clk(clk), .reset(reset), .pc_i(pc_i), .pc_out(pc_present));
endmodule