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

module add #(parameter N=32) (a,b,sum,cout);
  input logic [N-1:0]a;
  input logic [N-1:0]b;
  output logic cout;
  output logic [N-1:0]sum;
  assign {sum}=a+b;
endmodule

module instructmem #(parameter N=32, L=1024)(pc,reset,instr);
  input logic [N-1:0] pc;
  input logic reset;
  output logic [N-1:0] instr;
  logic [N-1:0] mem [L-1:0];
  assign instr = reset? 0: mem[pc];
endmodule

module mux_21 #(parameter n = 32)( 
    input logic [n-1:0] a,    // Input a
    input logic [n-1:0] b,    // Input b
    input logic s,            // Select signal
    output logic [n-1:0] out  // Output
);
    // Mux logic with ternary operator for selection
    assign out = s ? a : b;    // If s=1, output a, else output b
endmodule

module programcount #(parameter N=32)(clk,reset,pc,pc_next);
  input logic [N-1:0]pc_next;
  input logic clk;
  input logic reset;
  output logic[N-1:0] pc;
  always_ff@(posedge clk)
    begin
      if(reset)
        pc<=0;
      else
        pc<=pc_next;
    end
endmodule


