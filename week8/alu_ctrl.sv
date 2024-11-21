module alu_ctrl (
	input logic [2:0] func3,
	input logic [6:0] funct7,
	input logic [2:0] aluop,
	output logic [3:0] alucontrol
);


always @(*) begin

case(aluop)
	3'b000:      // R type
		case(func3)
			3'b000: begin 
			if(funct7==7'b0000000)
				alucontrol=4'b0000;
			else 
				alucontrol=4'b0001;
			end
			
			3'b100: alucontrol=4'b0010;
			3'b110: alucontrol=4'b0011;
			3'b111: alucontrol=4'b0100;
			3'b001: alucontrol=4'b0101;
			3'b101:  begin 
			if(funct7==7'b0000000)
				alucontrol=4'b0110;
			else 
				alucontrol=4'b0111;
			end
			
		endcase
		
	3'b001: case(func3)
			3'b000: begin 
			if(funct7==7'b0000000)
				alucontrol=4'b0000;
			else 
				alucontrol=4'b0001;
			end
			
			3'b100: alucontrol=4'b0010;
			3'b110: alucontrol=4'b0011;
			3'b111: alucontrol=4'b0100;
			3'b001: alucontrol=4'b0101;
			3'b101:  begin 
			if(funct7==7'b0000000)
				begin
				alucontrol=4'b0110;
				end
			else 
				begin
				alucontrol=4'b0111;
				end
			end
			
		endcase
		
	3'b010: alucontrol=4'b0100;  // Load
	
	3'b011: alucontrol=4'b0100;  // Store
	
	3'b100: case(func3)      // Branch
			3'b000: alucontrol=4'b1000;
			3'b001: alucontrol=4'b1001;
			3'b100: alucontrol=4'b1010;
			3'b101: alucontrol=4'b1011;
			3'b110: alucontrol=4'b1100;
			3'b111: alucontrol=4'b1101;
			
		endcase
endcase
end 


endmodule
