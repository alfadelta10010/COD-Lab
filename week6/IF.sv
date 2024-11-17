module IF#(parameter n=32)(clk,pc_imm,pc_next,pcn,reset,instr,s);
  const bit[n-1:0] next=4;
  input bit s;
  input logic clk;
  input logic[n-1:0] pc_imm;
  output logic[n-1:0] pc_next;
  input logic reset;
  output logic [n-1:0] instr;
  logic [n-1:0] pco;
  output logic [n-1:0] pcn;
  logic dudu;
  const bit[n-1:0] cc =0;
  
 
  mux2_1 m1(.a(pc_next),.b(pc_imm),.s(s),.out(pco));
  programcount pc1(.clk(clk),.pc_next(pco),.pc(pcn),.reset(reset));
  instructmem im1(.pc(pcn),.instr(instr));
  add a1(.a(pcn),.b(next),.cin(cc),.sum(pc_next),.cout(dudu));
endmodule

