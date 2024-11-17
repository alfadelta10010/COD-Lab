module instructmem #(parameter N=32, L=1024)(pc,rst,instruction);
  input logic [N-1:0] pc;
  input logic rst;
  output logic [N-1:0] instruction;
  logic [N-1:0] mem [L-1:0];
  assign instruction = rst? 0: mem[pc];
endmodule