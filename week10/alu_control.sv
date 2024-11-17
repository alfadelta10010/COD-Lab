

module alu_control( input  logic [1:0] ALUOp,       
    input  logic [2:0] funct3,     
    input  logic       funct7_5,    
    output logic [3:0] ALUControl   
);

    always_comb begin
        ALUControl = 4'b1111;

        if (ALUOp == 2'b00) begin
            ALUControl = 4'b0010; // ADD
        end
        else if (ALUOp == 2'b01) begin
            ALUControl = 4'b0110; // SUB
        end
        else if (ALUOp == 2'b10) begin
            case (funct3)
                3'b000: ALUControl = funct7_5 ? 4'b0110 : 4'b0010; // SUB if funct7_5=1, ADD if funct7_5=0
                3'b111: ALUControl = 4'b0000; // AND
                3'b110: ALUControl = 4'b0001; // OR
                default: ALUControl = 4'b1111; // Undefined
            endcase
        end
    end

endmodule

