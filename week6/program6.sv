module IF_Top#(parameter N = 32) (
  input logic clk,
  input logic reset,
  input logic PCsrc,
  input logic [N-1:0] PCimm,
  output logic [N-1:0] PC_4,
  output logic [N-1:0] instr
);
  
 
  logic [N-1:0] mux_to_PC, PC_to_Inst, adder_output;
 
  
  IF_mux #(32) mu(
    .a(PCimm),
    .b(adder_output),
    .s(PCsrc),
    .y(mux_to_PC)
  );
  
  IF_ProgramCounter#(32) pgmCounter(
    .clk(clk),
    .rst(reset),
    .pc_next(mux_to_PC),
    .pc(PC_to_Inst)
  );
  
  IF_instrMem#(1024,32) instr_mem (
    .addr(PC_to_Inst),
    .inst(instr)
  );
  
  IF_adder#(32) adder (
    .a(32'd4),
    .b(PC_to_Inst),
    .cin(1'b0),
    .sum(adder_output)
//    .sum(PC_4)
  );
  
  assign PC_4 = adder_output;
  
  
endmodule
