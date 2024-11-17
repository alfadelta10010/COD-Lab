module alu_control_final (input logic [2:0]func3,alu_operation,input logic [11:0]imm12,input logic [6:0]func7,output logic [3:0]alu_op);

alu_control g1(func3,alu_operation,imm12,func7,alu_op);

endmodule
