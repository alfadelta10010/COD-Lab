module instr_exec #(parameter N=32) (input logic [N-1:0]rs1_data,rs2_data,imm,input logic alusrc,branch,input logic alu_op,output logic [N-1:0]alu_result,output logic and_result);
wire [N-1:0]mux_result;
wire zero;
mux_2_1 g1(rs2_data,imm,alusrc,mux_result);
alu g2(rs1_data,mux_result,alu_op,alu_result,zero);
and_gate g3(zero,branch,and_result);
endmodule
