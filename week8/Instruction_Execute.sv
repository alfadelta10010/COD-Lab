module ALU_Top_BlackBox#(parameter N = 32,M = 4) (
  input logic [N-1:0] ALUin1,ALUin2,
  input logic Branch,
  input logic [N-1:0] rs2_data,Imm32,
  input logic[M-1:0] ALUop,
//   input logic[1:0] ALU_src,
//   output logic[1:0] AND_out,
  input logic ALU_src,  // Should be a single bit, not [1:0]
  output logic AND_out,
  output logic [N-1:0] ALU_Final_Out
);
  
  logic[N-1:0] mux_to_alu;
  logic zero_alu;
  
  mux21 #(32) my_Mux(
    .a(rs2_data),
    .b(Imm32),
    .s(ALU_src),
    .y(mux_to_alu)
  );
  
  ALU #(32,4) ALU (
    .ip1(ALUin1),
    .ip2(mux_to_alu),
    .ALUop(ALUop),
    .ALUout(ALU_Final_Out),
    .flag(zero_alu)
  );
  
  and_gate AND_Gate (
    .zero(zero_alu),
    .branch(Branch),
    .ANDout(AND_out)
  );
  
  
endmodule