`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2024 22:13:10
// Design Name: 
// Module Name: CONTROL
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module CONTROL#(parameter n=32)(opcode,func3,func7,ALU_src,branch,wb_en,ALU_op,mem_reg,mem_read,mem_write);
	input logic [6:0]opcode;
	input logic [2:0] func3;
	input logic [6:0] func7;
	output logic ALU_src;
	output logic branch;
	output logic wb_en;
	//output logic //wr_data; // Not being used
	output logic [3:0]ALU_op;
	output logic mem_reg;
	output logic mem_read;
	output logic mem_write;

always @(*) begin
	case(opcode)
	7'b0110011 :begin
		case(func3) 
			3'b000 : begin //r-type add
				if (func7==7'b0000000) begin
					 ALU_src = 0;
					 branch = 0;
					 wb_en = 1;
					 //wr_data = 0;
					 ALU_op = 4'b0000;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func7==7'b1000000)begin //r-type sub
					 ALU_src = 0;
					 branch = 0;
					 wb_en = 1;
					 //wr_data = 0;
					 ALU_op = 4'b0001;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b100:begin    //r-type xor
				 ALU_src = 0;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b1000;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b110: begin  //r-type or
				 ALU_src = 0;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b1100;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b111:begin   //r-type and
				 ALU_src = 0;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b1110;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b001:begin   // r-type shift left logical
				 ALU_src = 0;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b0010;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b101:begin
				if (func7==7'b0000000) begin  //r-type shift right logical
					 ALU_src = 0;
					 branch = 0;
					 wb_en = 1;
					 //wr_data = 0;
					 ALU_op = 4'b1010;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func7==7'b1000000)begin  //r-type shift right arthematic
					 ALU_src = 0;
					 branch = 0;
					 wb_en = 1;
					 //wr_data = 0;
					 ALU_op = 4'b1011;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b010:begin     //r-type set less than
				 ALU_src = 0;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b0100;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b011:begin     // r-type shift less than(u)
				 ALU_src = 0;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b0110;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
		endcase
	end
	7'b0010011 :begin     //i-type add
		case(func3) 
			3'b000:begin
				 ALU_src = 1; 
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b0000;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b100:begin         //i-type xor
				 ALU_src = 1;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b1000;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b110: begin          //i-type or
				 ALU_src = 1;
				 branch = 0;
				 wb_en = 1; 
				 //wr_data = 0;
				 ALU_op = 4'b1100;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
			3'b111:begin            //i-type and
				 ALU_src = 1; 
				 branch = 0;
				 wb_en = 1; 
				 //wr_data = 0;
				 ALU_op = 4'b1110;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end 
			3'b001:begin        //itype shift left logivcal
				 ALU_src = 1;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b0010;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b101:begin
				if (func7[6:0]==7'b0000000) begin   //i-type shift right logical
					 ALU_src = 1;
					 branch = 0;
					 wb_en = 1;
					 //wr_data = 0;
					 ALU_op = 4'b1010;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
				else if (func7[6:0]==7'b1000000)begin      //i-type shift right arthematic
					 ALU_src = 1;
					 branch = 0;
					 wb_en = 1;
					 //wr_data = 0;
					 ALU_op = 4'b1011;
					 mem_reg = 1;
					 mem_read = 0;
					 mem_write = 0;
				end
			end
			3'b010:begin                 //set less then imm
				 ALU_src = 1;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b0100;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
			3'b011:begin             //set more then imm
				 ALU_src = 1;
				 branch = 0;
				 wb_en = 1;
				 //wr_data = 0;
				 ALU_op = 4'b0110;
				 mem_reg = 1;
				 mem_read = 0;
				 mem_write = 0;
			end
		endcase
	end
	7'b0000011 : begin
		//load word
		 ALU_src = 1;
		 branch = 0;
		 wb_en = 1;
		 //wr_data = 0;
		 ALU_op = 0000;
		 mem_reg = 1;
		 mem_read = 1;
		 mem_write = 0;
	end
	7'b0100011 : begin
		//store word
		 ALU_src = 1;
		 branch = 0;
		 wb_en = 0;
		 //wr_data = 1;
		 ALU_op = 0000;
		 mem_reg = 1;
		 mem_read = 0;
		 mem_write = 1;
	end
	7'b1100011 :  begin           //branch==
		 ALU_src = 0;
		 branch = 1;
		 wb_en = 0;
		 //wr_data = 0;
		 ALU_op = 0001;
		 mem_reg = 0;
		 mem_read = 0;
		 mem_write = 0;
	end		
	endcase
end


//Decoder d2(.func3(func3),.func7(func7),.opcode(opcode));	
endmodule
