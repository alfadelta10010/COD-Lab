module control #(parameter n=32)(
	input logic [6:0]opcode,
	input logic [2:0] func_3,
	input logic [6:0] func_7,
	output logic alu_src,
	output logic branch,
	output logic wr_en,
	output logic wr_data,
	output logic [3:0]alu_op,
	output logic mem_reg,
	output logic mem_read,
	output logic mem_write
);

always @(*) begin
	case(opcode)
	7'b0110011 :begin
		case(func_3) 
			3'b000 : begin //r-type add
				if (func_7==7'b0000000) begin
					 alu_src = 0;
					 branch = 0;
					 wr_en = 1;
					 wr_data = 0;
					 alu_op = 4'b0000;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func_7==7'b1000000)begin //r-type sub
					 alu_src = 0;
					 branch = 0;
					 wr_en = 1;
					 wr_data = 0;
					 alu_op = 4'b0001;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b100:begin    //r-type xor
				 alu_src = 0;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b1000;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b110: begin  //r-type or
				 alu_src = 0;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b1100;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b111:begin   //r-type and
				 alu_src = 0;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b1110;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b001:begin   // r-type shift left logical
				 alu_src = 0;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b0010;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b101:begin
				if (func_7==7'b0000000) begin  //r-type shift right logical
					 alu_src = 0;
					 branch = 0;
					 wr_en = 1;
					 wr_data = 0;
					 alu_op = 4'b1010;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func_7==7'b1000000)begin  //r-type shift right arthematic
					 alu_src = 0;
					 branch = 0;
					 wr_en = 1;
					 wr_data = 0;
					 alu_op = 4'b1011;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b010:begin     //r-type set less than
				 alu_src = 0;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b0100;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b011:begin     // r-type shift less than(u)
				 alu_src = 0;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b0110;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
		endcase
	end
	7'b0010011 :begin     //i-type add
		case(func_3) 
			3'b000:begin
				 alu_src = 1; 
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b0000;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b100:begin         //i-type xor
				 alu_src = 1;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b1000;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b110: begin          //i-type or
				 alu_src = 1;
				 branch = 0;
				 wr_en = 1; 
				 wr_data = 0;
				 alu_op = 4'b1100;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
			3'b111:begin            //i-type and
				 alu_src = 1; 
				 branch = 0;
				 wr_en = 1; 
				 wr_data = 0;
				 alu_op = 4'b1110;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
			3'b001:begin        //itype shift left logivcal
				 alu_src = 1;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b0010;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b101:begin
				if (func_7[6:0]==7'b0000000) begin   //i-type shift right logical
					 alu_src = 1;
					 branch = 0;
					 wr_en = 1;
					 wr_data = 0;
					 alu_op = 4'b1010;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func_7[6:0]==7'b1000000)begin      //i-type shift right arthematic
					 alu_src = 1;
					 branch = 0;
					 wr_en = 1;
					 wr_data = 0;
					 alu_op = 4'b1011;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b010:begin                 //set less then imm
				 alu_src = 1;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b0100;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b011:begin             //set more then imm
				 alu_src = 1;
				 branch = 0;
				 wr_en = 1;
				 wr_data = 0;
				 alu_op = 4'b0110;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
		endcase
	end
	7'b0000011 : begin
		//load word
		 alu_src = 1;
		 branch = 0;
		 wr_en = 1;
		 wr_data = 0;
		 alu_op = 0000;
		 mem_reg = 1;
		 mem_read = 1;
		 mem_write = 0;
	end
	7'b0100011 : begin
		//store word
		 alu_src = 1;
		 branch = 0;
		 wr_en = 0;
		 wr_data = 1;
		 alu_op = 0000;
		 mem_reg = 1;
		 mem_read = 0;
		 mem_write = 1;
	end
	7'b1100011 :  begin           //branch==
		 alu_src = 0;
		 branch = 1;
		 wr_en = 0;
		 wr_data = 0;
		 alu_op = 0001;
		 mem_reg = 0;
		 mem_read = 0;
		 mem_write = 0;
	end		
	endcase
end
	
endmodule
