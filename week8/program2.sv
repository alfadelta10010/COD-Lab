
module ALU(d1, d2, result, control,zero);
	input logic [31:0] d1;
	input logic [31:0] d2;
	output logic [31:0] result;
	 logic signed [31:0] d1S, d2S;
	input logic [3:0] control;
	output logic zero=0;

	always_comb begin
		case(control)
			4'b0000: result = d1 + d2; //ADD
			4'b0001: result = d1 << d2[4:0]; //SLL
			4'b0010: begin
				d1S = d1; d2S = d2;
				result = (d1S < d2S) ? 32'h00000001 : 32'h00000000; //SLT
			end
			4'b0011: result = (d1 < d2) ? 32'h00000001 : 32'h00000000; //SLTU
			4'b0100: result = d1 ^ d2; //XOR
			4'b0101: result = d1 >> d2[4:0]; //SRL
			4'b0110: result = d1 | d2; //OR
			4'b0111: result = d1 & d2; //AND
			4'b1000: result = d1 - d2; //SUB
			//4'b1001:
			//4'b1010:
			//4'b1011:
			//4'b1100:
			4'b1101: result = d1 >>> d2[4:0]; //SRA
			//4'b1110:
			//4'b1111:
			default: result = 32'bX;
		endcase
	end
endmodule