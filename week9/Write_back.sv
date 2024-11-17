module Write_back#(parameter N=32)(input logic [N-1:0]mem_out,alu_out,
input logic mem_to_reg,
output logic [N-1:0] wb_data);

mux2_1 mux_wb (.a(alu_out),.b(mem_out),.sel(mem_to_reg),.y(wb_data));
endmodule
