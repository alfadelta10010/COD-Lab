module instructmem #(parameter N=32, L=1024)(pc,rst,instr);
  input logic [N-1:0] pc;
  input logic rst;
  output logic [N-1:0] instr;
  logic [N-1:0] mem [L-1:0];
  assign instr = rst? 0: mem[pc];
endmodule
