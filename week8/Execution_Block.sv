module Execution_Block(input logic[31:0]rs1_data,rs2_data,imm_out,pc_present,immidiate_out,
input logic alu_src,branch,
input logic [5:0]control_out,
output logic [31:0]alu_out,mux_in,
output logic zero,
output logic and_out);

wire [31:0]mux_ex_out,imm_output;

alu alu_ex (.control_out(control_out),.rs1_data(rs1_data),.rs2_data(mux_ex_out),
            .alu_out(alu_out),.zero(zero));
and_gate and_ex (.zero(zero),.branch(branch),.and_out(and_out));
mux2_1 mux_ex (.a(rs2_data),.b(imm_out),.sel(alu_src),.y(mux_ex_out));
//exe_adder ex_add (.pc_present(pc_present),.immidiate_out(imm_output),.mux_in(mux_in));
endmodule
