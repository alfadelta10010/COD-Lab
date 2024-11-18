module Control_top(
input logic[6:0] opcode,
input logic clk,fun7,
input logic [2:0]fun3,
output logic branch,reg_write,Memtoreg,Mem_wr,Mem_rd,Alu_src,
output logic [4:0] Alu_operation
);
logic [2:0] Alu_op;

main_control mc(
.clk(clk),
.opcode(opcode),
.Alu_op(Alu_op),
.branch(branch),
.regWrite(reg_write),
.MemtoReg(Memtoreg),
.Mem_wr(Mem_wr),
.Mem_rd(Mem_rd),
.Alu_src(Alu_src)
);

Alu_control ac(
.Alu_op(Alu_op),
.Alu_operation(Alu_operation),
.fun3(fun3),
.fun7(fun7),
);
endmodule