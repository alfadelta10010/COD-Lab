module alu#(parameter N=32)(rs1_data,input_2,alu_op,alu_result,zero);

	input logic [N-1:0] rs1_data,input_2;
	output logic [N-1:0] alu_result;
	input logic[3:0] alu_op;

	output logic zero;
	always_comb
	begin
	alu_result=32'b0;
	zero=0;
	if (alu_op==0000)
	begin
		alu_result= (rs1_data & input_2);
	end
	else if (alu_op==0001)
	begin
		alu_result= (rs1_data | input_2);
	end
	else if (alu_op==0010)
	begin
		alu_result= (rs1_data + input_2);
	end
	else if (alu_op==0110)
	begin
		alu_result=(rs1_data -input_2);
	end
	else if (rs1_data==input_2)
	begin
		zero=1;
	end
		else if (rs1_data!=input_2)
	begin
		zero=0;
	end
	end
endmodule
	
		
	