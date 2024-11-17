module INS_FETCH #(parameter N=32) (input logic clk,input logic reset, input logic sel, 
input logic [N-1:0]pc_imm, 
output logic [N-1:0]pc_new,output logic [N-1:0]inst);
wire [N-1:0]line1,line2;
MUX #(32) g1(pc_new,pc_imm,sel,line1);
PC #(32) g2(clk,reset,line1,line2);
MEM #(32) g3(line2,inst,reset);
adder #(32) g4(line2,32'd4,pc_new);
endmodule