module decoder (
    input logic [31:0] instr,
    output logic [4:0] rd,
    output logic [4:0] rs1,
    output logic [4:0] rs2,
    output logic [11:0] imm,
    output logic [2:0] func3,    // func3 is 3 bits
    output logic [6:0] func7     // func7 is 7 bits
);
    logic [6:0] op;
    assign op = instr[6:0];

    always @(*) begin
        case(op)
            // R type
            7'b0110011: begin
                rd = instr[11:7];
                func3 = instr[14:12];  // Extract func3 for R-type
                rs1 = instr[19:15];
                rs2 = instr[24:20];
                func7 = instr[31:25];  // Extract func7 for R-type
            end
            
            // I type
            7'b0010011: begin
                rd = instr[11:7];
                func3 = instr[14:12];  // Extract func3 for I-type
                rs1 = instr[19:15];
                imm = instr[31:20];    // Immediate for I-type
            end
            
            // L type (Load)
            7'b0000011: begin
                rd = instr[11:7];
                func3 = instr[14:12];  // Extract func3 for load type
                rs1 = instr[19:15];
                imm = instr[31:20];    // Immediate for L-type
            end

            // S type (Store)
            7'b0100011: begin
                func3 = instr[14:12];  // Extract func3 for store type
                rs1 = instr[19:15];
                rs2 = instr[24:20];
                imm = {instr[31:25], instr[11:7]}; // Store immediate
            end

            // B type (Branch)
            7'b1100011: begin
                func3 = instr[14:12];  // Extract func3 for branch
                rs1 = instr[19:15];
                rs2 = instr[24:20];
                imm = {instr[31], instr[7], instr[30:25], instr[11:8]}; // Branch immediate
            end

            default: begin
                rd = 5'b0;
                rs1 = 5'b0;
                rs2 = 5'b0;
                imm = 12'b0;
                func3 = 3'b0;
                func7 = 7'b0;
            end
        endcase
    end
endmodule
