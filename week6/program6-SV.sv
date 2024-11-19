module IF#(parameter n=32)(clk,pc_next,pc_imm,reset,instr,s);
  const bit[n-1:0] next=4;
  const bit[n-1:0] cc =0;
  input bit s;
  input logic clk;
  input logic[n-1:0] pc_imm;
  logic[n-1:0] pc_next;
  input logic reset;
  output logic [n-1:0] instr;
  logic [n-1:0] pco;
  logic [n-1:0] pcn;
  
 
  mux2_1 m1(.a(pc_next),.b(pc_imm),.s(s),.out(pco));
  programcount pc1(.clk(clk),.reset(reset),.pc_next(pco),.pc(pcn));
  instructmem im1(.pc(pcn),.rst(reset),.instr(instr));
  add a1(.a(pcn),.b(next),.cin(cc),.sum(pc_next));
endmodule
