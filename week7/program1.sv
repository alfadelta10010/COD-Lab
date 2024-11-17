module main_control(
    input logic clk,
    input logic [6:0] opcode, 
    output logic branch, regWrite, MemtoReg, Mem_wr, Mem_rd, Alu_src,
    output logic [1:0] Alu_op
);

always @(posedge clk) begin
    case (opcode)
        7'b0101111: begin // R-type
            branch <= 1'b0;
            regWrite <= 1'b1;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b0;
            Alu_op <= 2'b10;
        end
        7'b0010011: begin // I-type
            branch <= 1'b0;
            regWrite <= 1'b1;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b1;
            Alu_op <= 2'b11; // to decide which operation in I-type
        end
        7'b0000011: begin // Load
            branch <= 1'b0;
            regWrite <= 1'b1;
            MemtoReg <= 1'b1;
            Mem_rd <= 1'b1;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b1;
            Alu_op <= 2'b00;
        end
        7'b0100011: begin // Store
            branch <= 1'b0;
            regWrite <= 1'b0;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b1;
            Alu_src <= 1'b1;
            Alu_op <= 2'b00;
        end
        7'b1100011: begin // BEQ
            branch <= 1'b1;
            regWrite <= 1'b0;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b1;
            Alu_op <= 2'b01;
        end
        default: begin
            branch <= 1'b0;
            regWrite <= 1'b0;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b0;
            Alu_op <= 2'b00;
        end
    endcase
end

endmodule
