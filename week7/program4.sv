// Write a SV program for the Immediate Unit

module immediate_unit (
    input logic [31:0] instruction,
    output logic [31:0] immediate
);
    always_comb begin
        case (instruction[6:0])
            7'b0000011, // Load instructions (I-type)
            7'b0010011, // Immediate arithmetic (I-type)
            7'b1100111, // JALR (I-type)
            7'b1101111, // JAL (U-type)
            default:
                immediate = {{20{instruction[31]}}, instruction[31:20]};
        endcase
        
        if (instruction[6:0] == 7'b0100011) begin // Store instructions (S-type)
            immediate = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
        end else if (instruction[6:0] == 7'b1100011) begin // Branch instructions (B-type)
            immediate = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
        end else if (instruction[6:0] == 7'b0110111 || instruction[6:0] == 7'b1110111) begin // U-type instructions
            immediate = {instruction[31:12], 12'b000000000000};
        end else begin 
            immediate = 32'b00000000000000000000000000000000; 
        end 
    end 
endmodule