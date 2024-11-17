module decoder (
	input logic[31:0] instruction,
	output logic[4:0] rs1, rs2, rd,
	output logic[31:0] imm,
	output logic[2:0] fn3,
	output logic[6:0] fn7, opcode,
	output logic imm10
    );
	
	always_comb begin
        opcode = instruction[6:0];
        
        case(opcode)
            7'b0110011: // R type
              begin
                fn7 = instruction[31:25];
                rs2 = instruction[24:20];
                rs1 = instruction[19:15];
                fn3 = instruction[14:12];
                rd = instruction[11:7];
              end
            7'b0010011: // I type
              begin
                imm = {{20{instruction[31]}},instruction[31:20]};
                rs1 = instruction[19:15];
                fn3 = instruction[14:12];
                rd = instruction[11:7];
                imm10 = instruction[30];
              end
            7'b0000011: // I type (load)
              begin
                imm = instruction[31:20];
                rs1 = instruction[19:15];
                fn3 = instruction[14:12];
                rd = instruction[11:7];
              end
            7'b0100011: // S type
                begin
                imm = {instruction[31:25], instruction[11:7]};
                rs1 = instruction[19:15];
                fn3 = instruction[14:12];
                end
            7'b1100011: // B type
                begin
                imm = {{20{instruction[31]}} ,instruction[31], instruction[7], instruction[30:25], instruction[11:8]};
                rs2 = instruction[24:20];
                rs1 = instruction[19:15];
                fn3 = instruction[14:12];
                end
                
            // J
            7'b1101111:
                begin
                imm = {{12{imm[31]}}, imm[31], imm[19:12], imm[20], imm[30:21]};
                rd = instruction[11:7];
                end
            
            // JALR
            7'b1100111:
              begin
                imm = {{20{instruction[31]}},instruction[31:20]};
                rs1 = instruction[19:15];
                fn3 = instruction[14:12];
                rd = instruction[11:7];
                imm10 = instruction[30];
              end
            
            // U
            7'b0110111, 7'b0010111:
                begin
                imm = instruction[31:12];
                rd = instruction[11:7];
                end
            
            default:
                begin
                imm = 32'b0;
                rs2 = 5'b0;
                rs1 = 5'b0;
                rd = 5'b0;
                fn7 = 7'b0;
                fn3 = 3'b0;
                imm10 = 0;
                end
        endcase
	end
endmodule
