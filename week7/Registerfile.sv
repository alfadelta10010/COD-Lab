`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2024 14:52:55
// Design Name: 
// Module Name: Registerfile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RegisterFile(clk, wen, rd, rs1, rs2, r1, r2, din);
  input logic clk, wen;
  input logic [4:0] rd;
  input logic [4:0] rs1;
  input logic [4:0] rs2;
  input logic [31:0] din;
  output logic [31:0] r1;
  output logic [31:0] r2;
  logic [31:0] regs [0:31];
  
  // Initialize the register file to zero
  initial begin
    for (int i = 0; i < 32; i++)
      regs[i] <= 32'b0;
  end

  // Write to register file on the negative edge of the clock
  always_ff @(negedge clk) begin
    if (wen && rd != 5'd0) // Assuming rd = 0 is the zero register, which shouldn't be written
      regs[rd] <= din;
  end

  // Read from the register file on the positive edge of the clock
  always_ff @(posedge clk) begin
    r1 <= regs[rs1];
    r2 <= regs[rs2];
  end
endmodule