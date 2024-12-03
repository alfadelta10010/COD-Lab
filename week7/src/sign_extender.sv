
module sign_extend(
        output logic [31:0]imm_out,
        input logic [19:0] imm_in,
	input logic [6:0] opcode
    );
always_comb
    case(opcode)
        7'b0110011:		//this is for R type
	begin
		imm_out[31:0]=32'b0;
	end
        7'b00000011 :		// this is for load 
	begin  
		imm_out[31:0]={{20{imm_in[11]}}, imm_in[11:0]};
	end
	7'b0010011:		// I type
	begin
		imm_out[31:0]={{20{imm_in[11]}}, imm_in[11:0]};
	end 
        7'b0100011:		// store
        begin
		imm_out[31:0]={{20{imm_in[11]}}, imm_in[11:0]};
        end
        7'b1100011: 		// branch
        begin              
		imm_out[31:0]={{20{imm_in[11]}},imm_in[11:0]};
        end
        7'b0110111: // lui
        begin
		imm_out[31:0]={{12{imm_in[19]}},imm_in << 12};
        end
        7'b0010111: // auipc
        begin
		imm_out[31:0]={{8{imm_in[19]}},imm_in << 12};
        end
        7'b1101111: // jal
        begin 
		imm_out[31:0]={{12{imm_in[19]}},imm_in << 1};    
        end 
        7'b1100111:
        begin 
		imm_out[31:0]={{12{imm_in[19]}},imm_in};    
        end 
          endcase
endmodule
