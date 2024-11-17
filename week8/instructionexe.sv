module instructionexe(rs1_out, rs2_out, s_imm, alu_src, aluop, branch,alu_out, and_out );
input logic [31:0] rs1_out;
input logic[31:0] rs2_out;
input logic[31:0] s_imm;
input logic alu_src;
input logic[3:0] aluop;
input bit branch;
bit zero;
output logic[31:0] alu_out;
output bit and_out;
logic [31:0]mux_out;

muxalu muxex(.rs2_out(rs2_out), .s_imm(s_imm), .alu_src(alu_src), .mux_out(mux_out));
alu aluex(.mux_out(mux_out), .rs1_out(rs1_out), .aluop(aluop), .alu_out(alu_out), .zero(zero));
exand andex(.branch(branch), .zero(zero), .and_out(and_out));

endmodule