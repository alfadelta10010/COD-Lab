module IF#(parameter n=32)(input logic clk,
                           input logic [n-1:0] pc_imm,
                           input logic reset,
                           input logic s,
                           output logic [n-1:0] pc_next,
                           output logic [n-1:0] instruction);

  const bit[n-1:0] next = 4;
  const bit[n-1:0] cc = 0;

  logic [n-1:0] pco;
  logic [n-1:0] pcn;

  mux2_1 #(n) mux1(.a(pc_next), .b(pc_imm), .s(s), .out(pco));
  programcount #(n) pc1(.clk(clk), .reset(reset), .pc(pcn), .pc_next(pco));
  instructmem #(n) im1(.pc(pcn), .rst(reset), .instruction(instruction));
  fulladder #(n) adder1(.a(pcn), .b(next), .cout(cc), .sum(pc_next));

endmodule