module instructmem #(parameter N=32, L=1024)(pc,instr);
  input logic [N-1:0] pc;
  output logic [N-1:0] instr;
  logic [N-1:0] mem [7:0]='{32'h0,32'h0,32'h0,32'h0,32'h00000000,32'h00848933,32'h10100493,32'h01000413};
  assign instr = mem[pc];
endmodule

