module Instr_mem(input logic [31:0]addr,input logic clk,output logic [31:0]inst);

reg [31:0]mem[1230:0];
    
  initial begin
        mem[0] = 32'h00000033;   // ADD x0, x0, x0 (NOP instruction)
        mem[1] = 32'h002080B3;   // ADD x1, x1, x2
        mem[2] = 32'h00410133;   // ADD x2, x2, x4
        // Additional instructions can be initialized here...
    end
assign inst=mem[addr[31:2]];
endmodule

