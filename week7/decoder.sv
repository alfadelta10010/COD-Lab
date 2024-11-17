module decoder (
    input  logic [31:0] instruction,
    output logic [6:0]  opcode,
    output logic [2:0]  funct3,
    output logic [6:0]  funct7,
    output logic [4:0]  rd,
    output logic [4:0]  rs1,
    output logic [4:0]  rs2,
    output logic [12:0] imm
);

    assign opcode = instruction[6:0];

    always @(*) begin
      
        case (opcode)
            7'b0110011: begin
                rd     = instruction[11:7];
                rs1    = instruction[19:15];
                rs2    = instruction[24:20];
                funct3 = instruction[14:12];
                funct7 = instruction[31:25];
            end

            7'b0010011:
             begin
                rd     = instruction[11:7];
                rs1    = instruction[19:15];
                funct3 = instruction[14:12];
                imm    = { instruction[31:20]};
            end
           
            7'b0000011: begin
                rd     = instruction[11:7];
                rs1    = instruction[19:15];
                funct3 = instruction[14:12];
                imm    = {instruction[31:20]};
            end

            7'b0100011: begin
                rs1    = instruction[19:15];
                rs2    = instruction[24:20];
                funct3 = instruction[14:12];
                imm    = { instruction[31:25], instruction[11:7]};
            end


            7'b1100011: begin
                rs1    = instruction[19:15];
                rs2    = instruction[24:20];
                funct3 = instruction[14:12];
                imm    = { instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
            end

           
        endcase
    end

endmodule
