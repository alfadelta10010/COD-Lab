module instructmem #(parameter N=32, L=1024)(pc,reset,instr);
  input logic [N-1:0] pc;
  input logic reset;
  output logic [N-1:0] instr;
  logic [N-1:0] mem [L-1:0];
  assign instr = reset? 0: mem[pc];
endmodule
