module signext #(parameter N=32)(
	input logic [N-1:0] imm,
	input logic [6:0] opcode,
	output logic [N-1:0] s_imm
	);
	//rtype doesn't require sign extension.

	always @(*)
	begin 
	case(opcode)
		7'b0010011:begin    //I type
			s_imm[11:0]=imm[11:0];
			if(imm[11]==1)begin
				s_imm[N-1:12]=20'b11111111111111111111;
				end
			else
				s_imm[N-1:12]=20'b00000000000000000000;
			end
			 
		7'b0000011:begin   //Load
			s_imm[11:0]=imm[11:0];
			if(imm[11]==1)begin
				s_imm[N-1:12]=20'b11111111111111111111;
				end
			else
				s_imm[N-1:12]=20'b00000000000000000000;
			end
			
		7'b0100011:begin   //store
			s_imm[11:0]=imm[11:0];
			if(imm[11]==1)begin
				s_imm[N-1:12]=20'b11111111111111111111;
				end
			else
				s_imm[N-1:12]=20'b00000000000000000000;
			end
			
		7'b1100011:begin    //branch
			s_imm[12:1]=imm[12:1];
			if(imm[12]==1)begin
				s_imm[N-1:13]=19'b1111111111111111111;
				end
			else
				s_imm[N-1:13]=19'b0000000000000000000;
			end
		endcase
	end
endmodule