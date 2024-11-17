//iii)Write a SV program for the Register File

module reg_file_final #(parameter N=32) (input logic [4:0]rs1,rs2,rd, output logic [N-1:0]reg1,reg2,input logic [N-1:0]wd,input logic reset,regwrite);

reg_file g1(rs1,rs2,rd,reg1,reg2,wd,reset,regwrite);

endmodule