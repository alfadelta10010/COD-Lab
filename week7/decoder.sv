module decoder#(parameter N=32)(instr,rd_addr,fun3,fun7,rs1_addr,rs2_addr,imm);
input logic [N-1:0] instr;
logic [6:0] opcode;
output logic [4:0]rd_addr;
output logic [2:0]fun3;
output logic [4:0]rs1_addr;
output logic [4:0]rs2_addr;
output logic [6:0]fun7;
output logic [11:0]imm;
always_comb
begin
	rd_addr = 5'b0;
   fun3 = 3'b0;
   rs1_addr = 5'b0;
	rs2_addr = 5'b0;
   fun7 = 7'b0;
   imm = 12'b0;
	opcode=instr[6:0];
	case (opcode)
		//R type
		7'b0110011:
		begin
			rd_addr=instr[11:7];
			fun3=instr[14:12];
			rs1_addr=instr[19:15];
			rs2_addr=instr[24:20];
			fun7=instr[31:25];
		end
		// I type
		7'b0010011:
		begin
			imm=instr[N-1:20];
			rs1_addr=instr[19:15];
			fun3=instr[14:12];
			rd_addr=instr[11:7];
		end
		//lw type
		7'b0000011:
		begin
			imm=instr[N-1:20];
			rs1_addr=instr[19:15];
			fun3=instr[14:12];
			rd_addr=instr[11:7];
		end
		// S type
		7'b0100011:
		begin
			imm={instr[N-1:25],instr[11:7]};
			rs2_addr=instr[24:20];
			rs1_addr=instr[19:15];
			fun3=instr[14:12];
		end
		//B type
		7'b1100011:
		begin
			imm={instr[N-1:25],instr[11:7]};
			rs2_addr=instr[24:20];
			rs1_addr=instr[19:15];
			fun3=instr[14:12];
		end
		default:
		begin 
		//no need of any.this block is used bacause without default always_comb wont be pure combinational 
		//there we get latch inference to remove this error use default.
		/*
		In a combinational logic block (e.g., always_comb in SystemVerilog), 
		every output signal is expected to have a valid, defined value for all possible 
		input combinations. If a value for an output is not assigned under certain conditions, 
		the synthesizer assumes the circuit needs to "store" the last value until a new value is 
		assigned. This "memory"behavior leads to the inference of a latch.
		*/
		end
	endcase
end
endmodule


//testbench for decoder
//module testbench_decoder;
//	reg [N-1:0] inst;
//	logic [6:0] opcode;
//	wire [4:0]rd;
//	wire [2:0]func3;
//	wire [4:0]rs1;
//	wire [4:0]rs2;
//	wire [6:0]func7;
//	wire [11:0]imm;
//	decoder dut (.inst(inst),.rd(rd),.rs1(rs1),.rs2(rs2),.func3(func3),.func7(func7));
//	initial
//	begin
//		inst=32'b0;
//		#5;
//		inst=32'b1;
//		#5;
//		inst=32'h00100100;
//		#5;
//	end
//endmodule



