// Write a SV program for Writeback Stage

module write_back_stage #(parameter N=32) (input logic [N-1:0] alu_out,data_out, input logic mem_to_reg, output logic [N-1:0]wd);

write_back g1(alu_out,data_out,mem_to_reg,wd);

endmodule