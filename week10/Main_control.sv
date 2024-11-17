module Main_control(input  logic [6:0] opcode,    
    output logic       regWrite,   output logic       ALUSrc,   
    output logic       memRead, 
    output logic       memWrite, 
    output logic       branch,   
        output logic [1:0] ALUOp
);

    always_comb begin
        regWrite = 0;
        ALUSrc   = 0;
        memRead  = 0;
        memWrite = 0;
        branch   = 0;
        ALUOp    = 2'b00;

        case (opcode)
            7'b0110011: begin       // R-type instructions
                regWrite = 1;
                ALUOp    = 2'b10;
            end
            7'b0010011: begin       // I-type instructions
                regWrite = 1;
                ALUSrc   = 1;
                ALUOp    = 2'b00;
            end
            7'b0000011: begin       // Load instructions
                regWrite = 1;
                memRead  = 1;
                ALUSrc   = 1;
            end
            7'b0100011: begin       // Store instructions
                memWrite = 1;
                ALUSrc   = 1;
            end
            7'b1100011: begin       // Branch instructions
                branch   = 1;
                ALUOp    = 2'b01;
            end
            default: begin
            end
        endcase
    end

endmodule
