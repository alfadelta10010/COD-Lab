module alu_controller (
    input  logic [2:0] f3,          // funct3 field from instruction
    input  logic [6:0] f7,          // funct7 field from instruction
    input  logic [1:0] alu_ctrl,    // ALU control type from main control unit
    output logic [3:0] alu_op       // ALU operation control
);

    always_comb begin
        // Default value for alu_op
        alu_op = 4'b0000;

        if (alu_ctrl == 2'b00) begin
            if (f3 == 3'b101) begin
                alu_op = (f7 == 7'b0) ? 4'b0101 : 4'b1101; // SRLI/SRAI
            end
        end else if (alu_ctrl == 2'b01) begin
            alu_op = 4'b0000;  // ADD for address calculation
        end else if (alu_ctrl == 2'b10) begin
            if (f3 == 3'b000) begin
                alu_op = (f7 == 7'b0) ? 4'b0000 : 4'b1000; // ADD/SUB
            end else if (f3 == 3'b101) begin
                alu_op = (f7 == 7'b0) ? 4'b0101 : 4'b1101; // SRL/SRA
            end
        end else if (alu_ctrl == 2'b11) begin
            alu_op = 4'b0001;  // SUB for branch comparison
        end
    end
endmodule
