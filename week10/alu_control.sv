module alu_control(alu_control,fun3,fun7,alu_op,);

input logic [1:0] alu_control;
input logic [2:0] fun3;
input logic [6:0] fun7;
output logic [3:0] alu_op;

always_comb
	begin 
		case(alu_control)
		00:
		begin 
			alu_op=4'b0010;
		end
		01:
		begin 
			alu_op=4'b0001;
		end
		10:
		begin 
			if ((fun3==000) & (fun7==0000000))
				alu_op=4'b0010;	
			else if ((fun3==000) & (fun7==0100000))
				alu_op=4'b0110;
			else if ((fun3==111) & (fun7==0000000))
				alu_op=4'b0000;
			else if ((fun3==110) & (fun7==0000000))
				alu_op=4'b0001;
		end
		default:
			alu_op=4'b0000;
		endcase		
	end
endmodule