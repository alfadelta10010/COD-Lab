module IF#(parameter n=32)(clk,pc_next,reset,instr,s,immfinal);
  const bit[n-1:0] next=4;
  const bit[n-1:0] cc =0;
  input bit s;
  input logic clk;
  logic[n-1:0] pc_imm;
  output logic[n-1:0] pc_next;
  input logic reset;
  output logic [n-1:0] instr;
  logic [n-1:0] pco;
  logic [n-1:0] pcn;
  input logic [n-1:0] immfinal;
  
 
  mux_21 m_1(.a(pc_next),.b(pc_imm),.s(s),.out(pco));
  programcount pc(.clk(clk),.reset(reset),.pc(pcn),.pc_next(pco));
  instructmem im(.pc(pcn),.reset(reset),.instr(instr));
  add adr_1(.a(pcn),.b(next),.sum(pc_next));
  add adr_2(.a(pc),.b(immfinal),.sum(pc_imm));

endmodule


