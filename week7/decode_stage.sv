module decode_stage (
    input logic [31:0] instr,
    output logic [31:0] rs1_data,
    output logic [31:0] rs2_data,
    output logic [31:0] imm32,
	 input logic reg_write,
    input logic reset,
    input logic [31:0] wr_data,
	 output logic [6:0] opcode,
	 output logic [6:0] fun7,
	 output logic [2:0] fun3
);

    wire [4:0] rs1_addr;
    wire [4:0] rs2_addr;
    wire [4:0] rd_addr;
    wire [11:0] imm;
 

decoder g1(instr,rd_addr,fun3,fun7,rs1_addr,rs2_addr,imm,opcode);

register_block g2(rs1_addr,rs2_addr,rd_addr,reg_write,wr_data,reset,rs1_data,rs2_data);

sign_exetender g3(imm,imm32);

endmodule

//testbench 
/*
module testbech_decode_stage;
	wire [31:0]instr;
	wire reg_write;
	wire reset;
	reg [31:0] rs1_data;
	reg [31:0] rs2_data;
	reg [31:0] rd_data;
	reg [31:0] imm32;
	
	decode_stage dut(.instr(instr),.rs1_data(rs1_data),.rs2_data(rs2_data),.imm32(imm32),reg_write(reg_write),.reset(reset));
	initial 
		begin 
		reset=0;
		reg_write=0;
		instr=32'h00000001;
		#5;
		reset=0;
		reg_write=1;
		instr=32'h00000001;
		#5;
		reset=1;
		reg_write=0;
		instr=32'h00000001;
		#5;
		reset=1;
		reg_write=1;
		instr=32'h00000001;
		end
endmodule
		
*/
