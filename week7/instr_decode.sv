module instr_decode (
    input logic [31:0] inst,
    output logic [31:0] rs1_data,
    output logic [31:0] rs2_data,
    output logic [31:0] imm32,
	 output logic [6:0] func7,
	 output logic [2:0] func3,
	input logic [31:0] wr_data,
	input logic reset
	
);
    wire [4:0] rs1_addr;
    wire [4:0] rs2_addr;
    wire [4:0] rd_addr;
    wire [11:0] imm12;
    wire regwrite;
    //wire reset; 
    //wire [31:0] wr_data;

decoder g1(inst,rd_addr,rs1_addr,rs2_addr,func3,func7,imm12);
regfile g2(rs1_addr,rs2_addr,rd_addr,regwrite,wr_data,reset,rs1_data,rs2_data);
sign_exe g3(imm12,imm32);
endmodule
