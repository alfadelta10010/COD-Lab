module alu_control (func3,func7,aluop,aluoperation);
input logic [2:0] func3;
input logic [6:0] func7;
input logic [2:0] aluop;
output logic [3:0] aluoperation;
always @(*) 
begin
case(aluop)
3'b000: case(func3)     //R type
			3'b000: begin 
			if(func7==7'b0000000)
			aluoperation=4'b0000;
			else 
			aluoperation=4'b0001;
			end
			3'b100: aluoperation=4'b0010;
			3'b110: aluoperation=4'b0011;
			3'b111: aluoperation=4'b0100;
			3'b001: aluoperation=4'b0101;
			3'b101:  begin 
			if(func7==7'b0000000)
			aluoperation=4'b0110;
			else 
			aluoperation=4'b0111;
			end
endcase
3'b001: case(func3)
			3'b000: begin 
			if(func7==7'b0000000)
			aluoperation=4'b0000;
			else 
			aluoperation=4'b0001;
			end
			3'b100: aluoperation=4'b0010;
			3'b110: aluoperation=4'b0011;
			3'b111: aluoperation=4'b0100;
			3'b001: aluoperation=4'b0101;
			3'b101:  begin 
			if(func7==7'b0000000)
			begin
			aluoperation=4'b0110;
			end
			else 
			begin
			aluoperation=4'b0111;
			end
			end
endcase
3'b010: aluoperation=4'b0100;  // lw
3'b011: aluoperation=4'b0100;  // sw	
3'b100: case(func3)      // Branch
			3'b000: aluoperation=4'b1000;
			3'b001: aluoperation=4'b1001;
			3'b100: aluoperation=4'b1010;
			3'b101: aluoperation=4'b1011;
			3'b110: aluoperation=4'b1100;
			3'b111: aluoperation=4'b1101;	
endcase
endcase
end 
endmodule
