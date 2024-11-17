module execution #(parameter N=32)(alu_out,rs1_data,rs2_data,imm_out,and_out_ex,branch,alu_src,alu_control,pc_ex_in,pc_ex_out);
input logic [N-1:0]rs1_data,rs2_data,imm_out,pc_ex_in;
input logic branch,alu_src;
input logic [3:0]alu_control;
output logic and_out_ex;
wire [N-1:0]mux_ex_out,zero;
output logic [31:0]alu_out,pc_ex_out;
and_gate and_ex (.zero(zero),.branch(branch),.and_out(and_out_ex));
if_adder ex_add (.pc(pc_ex_in),.b_muxin(pc_ex_out),.imm_out(imm_out));
alu alu1 (.alu_control(alu_control),.rs1_data(rs1_data),.rs2_data(mux_ex_out),.alu_out(alu_out),.zero(zero));
mux21 mux_ex (.a(rs2_data),.b(imm_out),.control(alu_src),.y(mux_ex_out));
endmodule
