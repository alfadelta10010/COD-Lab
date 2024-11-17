module topexecute(input logic [31:0] reg1,reg2,immf,pc,
input logic alu_op,input logic [3:0]alu_src1,
output logic [31:0] alu_out);

logic [31:0] alu_in2,alu_in1;
mux21 mux3(reg1,pc,auipc_sel,alu_in1);
mux21 mux1(reg2,immf,alu_op,alu_in2);
alu_unit ALU(alu_in1,alu_in2,alu_src1,alu_out);
endmodule
