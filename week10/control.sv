module CONTROL#(parameter n=32)(opcode,func3,func7,alusrc,branch,wr_en,aluop,mem2reg,mem_read,mem_write);
	input logic [6:0]opcode;
	input logic [2:0] func3;
	input logic [6:0] func7;
	output logic alusrc;
	output logic branch;
	output logic wr_en;
	output logic [3:0]aluop;
	output logic mem2reg;
	output logic mem_read;
	output logic mem_write;

always @(*) begin
	case(opcode)
	7'b0110011 :begin
		case(func3) 
			3'b000 : begin //r-type add
				if (func7==7'b0000000) begin
					 alusrc = 0;
					 branch = 0;
					 wr_en = 1;
					 //wr_data = 0;
					 aluop = 4'b0000;
					 mem2reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func7==7'b1000000)begin //r-type sub
					 alusrc = 0;
					 branch = 0;
					 wr_en = 1;
					 //wr_data = 0;
					 aluop = 4'b0001;
					 mem2reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b100:begin    //r-type xor
				 alusrc = 0;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b1000;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b110: begin  //r-type or
				 alusrc = 0;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b1100;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b111:begin   //r-type and
				 alusrc = 0;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b1110;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b001:begin   // r-type shift left logical
				 alusrc = 0;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b0010;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b101:begin
				if (func7==7'b0000000) begin  //r-type shift right logical
					 alusrc = 0;
					 branch = 0;
					 wr_en = 1;
					 //wr_data = 0;
					 aluop = 4'b1010;
					 mem2reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func7==7'b1000000)begin  //r-type shift right arthematic
					 alusrc = 0;
					 branch = 0;
					 wr_en = 1;
					 //wr_data = 0;
					 aluop = 4'b1011;
					 mem2reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b010:begin     //r-type set less than
				 alusrc = 0;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b0100;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b011:begin     // r-type shift less than(u)
				 alusrc = 0;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b0110;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
		endcase
	end
	7'b0010011 :begin     //i-type add
		case(func3) 
			3'b000:begin
				 alusrc = 1; 
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b0000;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b100:begin         //i-type xor
				 alusrc = 1;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b1000;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b110: begin          //i-type or
				 alusrc = 1;
				 branch = 0;
				 wr_en = 1; 
				 //wr_data = 0;
				 aluop = 4'b1100;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
			3'b111:begin            //i-type and
				 alusrc = 1; 
				 branch = 0;
				 wr_en = 1; 
				 //wr_data = 0;
				 aluop = 4'b1110;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
			3'b001:begin        //itype shift left logivcal
				 alusrc = 1;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b0010;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b101:begin
				if (func7[6:0]==7'b0000000) begin   //i-type shift right logical
					 alusrc = 1;
					 branch = 0;
					 wr_en = 1;
					 //wr_data = 0;
					 aluop = 4'b1010;
					 mem2reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func7[6:0]==7'b1000000)begin      //i-type shift right arthematic
					 alusrc = 1;
					 branch = 0;
					 wr_en = 1;
					 //wr_data = 0;
					 aluop = 4'b1011;
					 mem2reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b010:begin                 //set less then imm
				 alusrc = 1;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b0100;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b011:begin           
				 alusrc = 1;
				 branch = 0;
				 wr_en = 1;
				 //wr_data = 0;
				 aluop = 4'b0110;
				 mem2reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
		endcase
	end
	7'b0000011 : begin
		//load word
		 alusrc = 1;
		 branch = 0;
		 wr_en = 1;
		 //wr_data = 0;
		 aluop = 0000;
		 mem2reg = 1;
		 mem_read = 1;
		 mem_write = 0;
	end
	7'b0100011 : begin
		//store word
		 alusrc = 1;
		 branch = 0;
		 wr_en = 0;
		 //wr_data = 1;
		 aluop = 0000;
		 mem2reg = 1;
		 mem_read = 0;
		 mem_write = 1;
	end
	7'b1100011 :  begin          
		 alusrc = 0;
		 branch = 1;
		 wr_en = 0;
		 //wr_data = 0;
		 aluop = 0001;
		 mem2reg = 0;
		 mem_read = 0;
		 mem_write = 0;
	end		
	endcase
end
endmodule
