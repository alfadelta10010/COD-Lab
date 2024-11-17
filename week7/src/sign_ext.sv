module sign_ext(opcode,inst1,imm32);
input logic [6:0]opcode;
input logic [31:0]inst1;
output logic [31:0]imm32;
always_comb
    case(opcode)
    //lui and auipc
        7'b0110111,
        7'b0010111: begin 
		imm32[31:12] = inst1[31:12];
		imm32[11:0] = 12'b0;
	end
	//I type,load and jalr
	7'b0010011,
	7'b0000011,
	7'b1100111:begin
		imm32={{20{inst1[31]}},inst1[31:20]};
	end
    //branch
        7'b1100011:begin 
		imm32 = {{20{inst1[31]}}, inst1[7], inst1[30:25], inst1[11:8], 1'b0};
        end   
    //jal
        7'b1101111:begin 
                imm32={{11{inst1[31]}},inst1[31],inst1[19:12],inst1[20],inst1[30:21],1'b0};    
                end
    //S-type
        7'b0100011:begin
                imm32={{20{inst1[31]}},inst1[31:25],inst1[11:7]};
                end
        default:imm32=32'b0;
    endcase
    
endmodule

