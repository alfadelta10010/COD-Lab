module Alu #(parameter N=32)(
	input logic [N-1:0] rs1,
	input logic [N-1:0] alumux,
	input logic [3:0] alucontrol,
	output logic [N-1:0] alu_result,
	output logic zero
	);
	
	always @(*) begin
		zero = 1'b0;

		case(alucontrol)
			4'b0100: begin   // AND
				alu_result = rs1 & alumux;
			end
			
			4'b0011: begin   // OR
				alu_result = rs1 | alumux;
			end
			
			4'b0000: begin   // ADD
				alu_result = rs1 + alumux;
			end
			
			4'b0001: begin   // SUB
				alu_result = rs1 - alumux;
			end
         
			4'b0010 : begin  // XOR
				alu_result = rs1 ^ alumux;
			end
			
			4'b0101: begin  // SLL
				alu_result = rs1 << alumux[4:0];
			end
			
			4'b0110: begin  // SRL
				alu_result = rs1 >> alumux[4:0];
			end
			
			4'b111: begin  // SRA
				alu_result = $signed(rs1) >>> alumux[4:0];
			end
			
			4'b1000: begin  //  BEQ
				zero = (rs1 == alumux) ? 1'b1 : 1'b0;
			end
					
			4'b1001: begin  //  BNE
				zero = (rs1 != alumux) ? 1'b1 : 1'b0;
			end
					
			4'b1010: begin  // BLT
				zero = (rs1 < alumux) ? 1'b1 : 1'b0;
			end
					
			4'b1011: begin  // BGE
				zero = (rs1 >= alumux) ? 1'b1 : 1'b0;
			end
					
			4'b1100: begin  // BLTU
				zero = ($unsigned(rs1) < $unsigned(alumux)) ? 1'b1 : 1'b0;
				end
					
			4'b1101: begin  // BGEU
				zero = ($unsigned(rs1) >= $unsigned(alumux)) ? 1'b1 : 1'b0;
			end
			
			default: begin
				alu_result = {N{1'b0}};
			end
		endcase
	end
endmodule
