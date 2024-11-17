
module control_unit #(parameter N=32)(opcode,fun3,fun7,reg_write,alu_src,alu_op,branch,mem_read,mem_write,mem_reg);

input logic [6:0] opcode;
input logic [2:0] fun3;
input logic [6:0] fun7;

output logic reg_write,alu_src,branch,mem_read,mem_write,mem_reg;
output logic [1:0]alu_op;

always_comb
	initial
		reg_write=0;
		alu_src=0;
		alu_op=0;
		branch=0;
		mem_read=0;
		mem_write=0;
		mem_reg=0;
		case(opcode)
			// R type
			7'b0110011:
				begin 
					reg_write=1;
					alu_src=0;
					alu_op=2'b10;
					branch=0;
					mem_read=0;
					mem_write=0;
					mem_reg=0;					
				end
			// I type
			7'b0010011:
				begin 
					reg_write=1;
					alu_src=1;
					alu_op=0;
					branch=0;
					mem_read=0;
					mem_write=0;
					mem_reg=0;					
				end
			// LW type
			7'b0000011:
				begin
					reg_write=1;
					alu_src=1;
					alu_op=2'b00;
					branch=0;
					mem_read=1;
					mem_write=0;
					mem_reg=1;
					
				end
			// s type
			7'b0100011:
				begin 
					reg_write=0;
					alu_src=1;
					alu_op=2'b00;
					branch=0;
					mem_read=0;
					mem_write=1;
					mem_reg=0;					
				end
			// B type
			7'b1100011:
				begin
					reg_write=0;
					alu_src=0;
					alu_op=2'b01;
					branch=1;
					mem_read=0;
					mem_write=0;
					mem_reg=0;					
				end
		endcase	
	end
endmodule

