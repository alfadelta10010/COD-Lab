module ALU( input logic [3:0] alu_op, input logic [31:0] rs1, rs2, output logic [31:0] rd1, output logic zf );
logic signed [31:0]  d1, d2;
always_comb begin
		case(alu_op)
			4'b0000: rd1 = rs1 + rs2; //ADD
			4'b0001: rd1 = rs1 << rs2[4:0]; //SLL
			4'b0010: begin
				d1 = rs1; d2 = rs2;
				rd1 = (d1 < d2) ? 32'h00000001 : 32'h00000000; //SLT
			end
			4'b0011: rd1 = (rs1 < rs2) ? 32'h00000001 : 32'h00000000; //SLTU
			4'b0100: rd1 = rs1 ^ rs2; //XOR
			4'b0101: rd1 = rs1 >> rs2[4:0]; //SRL
			4'b0110: rd1 = rs1 | rs2; //OR
			4'b0111: rd1 = rs1 & rs2; //AND
			4'b1000: rd1 = rs1 - rs2; //SUB
			//4'b1001:
			//4'b1010:
			//4'b1011:
			//4'b1100:
			4'b1101: rd1 = rs1 >>> rs2[4:0]; //SRA
			//4'b1110:
			//4'b1111:
			default: rd1 = 32'bX;
		endcase
	   zf = (rd1 == 32'b0) ? 1'b1 : 1'b0;
    end
endmodule
