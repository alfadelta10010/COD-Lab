// Write a SV program for Instruction Fetch Stage

module top_IF_black_box#(parameter N = 32) (
  input logic clk,
  input logic reset,
  input logic PCsrc,
  input logic [N-1:0] PCimm,
  output logic [N-1:0] PC_4,
  output logic [N-1:0] instr
);
  
  logic [N-1:0] mux_to_PC, PC_to_Inst, adder_output;
 
  // MUX to select between PC+4 or PCimm
  mux21 #(32) mux(
    .rs2(PCimm),
    .imm32(adder_output),
    .ALUsrc(PCsrc),
    .ALUin(mux_to_PC)
  );
  
  // Program Counter module
  Program_Counter#(32) pgmCounter(
    .clk(clk),
    .rst(reset),
    .pc_next(mux_to_PC),
    .pc(PC_to_Inst)
  );
  
  // Updated Instruction Memory module
  Instruction_Memory #(5) instr_mem (
    .pcin(PC_to_Inst), // Connect PC to pcin
    .dout(instr)       // Connect dout to instr
  );
  
  // Adder to compute PC + 4
  Adder#(32) adder (
    .a(32'd4),
    .b(PC_to_Inst),
    .cin(1'b0),
    .sum(adder_output)
  );
  
  assign PC_4 = adder_output; // Set PC_4 to output of the adder

endmodule
