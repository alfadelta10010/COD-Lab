module CU(
    output logic RegWrite, MemRead, MemWrite,  branch, ALUsrc, MemToReg, OpSel,
    output logic [3:0] operation,
    input logic [6:0] func7,
    input logic [2:0] func3,
    input logic [6:0] opcode
);
    logic RegWrite, MemRead, MemWrite,  branch, ALUsrc, MemToReg, OpSel;
    logic [1:0] AluOp;
    logic [6:0] opcode;
    logic [3:0] operation;

MainCU u_main(
	RegWrite, MemRead, MemWrite,  branch, ALUsrc, MemToReg, OpSel, AluOp,
	opcode
	);

AluCU u_alu(
	operation,
	AluOp, func7, func3
	);

endmodule

module MainCU (
    output logic RegWrite, MemRead, MemWrite,  branch, ALUsrc, MemToReg, OpSel,
    output logic [1:0] ALUop,
    input logic [6:0] opcode
);
logic [8:0] outs;

assign {RegWrite, MemRead, MemWrite,
       branch, ALUsrc, MemToReg, OpSel,
       ALUop} = outs;

always_comb begin
	// Check for which opcode
	case (opcode)
		7'b110_0111 : outs = 8'b100_1101_01; // I jump
		7'b000_0011 : outs = 9'b110_0110_00; // Load
		7'b001_0011 : outs = 9'b100_0100_xx; // I arithmetic
		7'b011_0111 : outs = 9'b100_0100_00; // lui
		7'b001_0111 : outs = 9'b100_0101_00; // auipc
		7'b110_1111 : outs = 9'b100_1100_00; // jal
		7'b110_0011 : outs = 9'b000_1000_01; // branch
		7'b010_0011 : outs = 9'b011_0100_00; // store
		7'b011_0011 : outs = 9'b100_0000_10; // R type
		default: outs = 9'b000_0000_00;
	endcase
end
    
endmodule

module AluCU(
	output logic [3:0] operation,
	input logic [1:0] AluOp,
	input logic [6:0] func7,
	input logic [2:0] func3
	);
	always_comb begin
		case(AluOp)
			2'b00: // load, store, U-type
				operation=0000;
			2'b01: // branch
				operation=0001;
			2'b10: // R type
				case(func3)
					3'b000: begin
						case (func7[5])
							1'b0: operation=0000; //add
							1'b1: operation=0001; //sub
						endcase
					end
					3'b001 : operation = 4'b0101; // sll 
					3'b010 : operation = 4'b0001; // slt !!
					3'b011 : operation = 4'b0001; // sltu !!
					3'b100 : operation = 4'b0100; // xor
					3'b101 : begin // shift right
					case(func7)
						7'b000_0000 : operation = 4'b0110; // srl
						7'b010_0000 : operation = 4'b0111; // sra
					endcase
					end

					3'b110  : operation = 4'b0011; // or
					3'b111  : operation = 4'b0010; //AND
				endcase
			2'b11: operation = 4'b0000; //custom (made it I type for now)
			default:
				case(func3)
					3'b000 : operation = 0000; // addi 
					3'b010 : operation = 0001; // slti 
					3'b011 : operation = 0001; // sltiu
					3'b100 : operation = 0100; // xori 
					3'b110 : operation = 0011; // ori  
					3'b111 : operation = 0010; // andi 
					3'b001 : begin // shift immediate
					case(func7[5])  
						1'b0 : operation = 0101; // s_li
						1'b1 : operation = 0111; // srai
					endcase
					end
				endcase
		endcase    
	end
endmodule
