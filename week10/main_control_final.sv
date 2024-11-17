//i)Write a SV program for Control units

module main_control_final (input logic [6:0]opcode, output logic branch,alu_src,memread,memwrite,mem_to_reg,regwrite,output logic [2:0]alu_operation);

main_control g1(opcode,branch,alu_src,memread,memwrite,mem_to_reg,regwrite,alu_operation);


endmodule