module decoder2 #(parameter N=32, datapath=5, imm=12, opcode_size=7, fun7_size=7, fun3_size=3)(
    input logic [N-1:0] bin_inst,
    output logic [datapath-1:0] rs1, rs2, rd,
    output logic [imm-1:0] imm12,
    output logic [opcode_size-1:0] opcode,
    output logic [fun7_size-1:0] fun7,
    output logic [fun3_size-1:0] fun3   );
assign opcode = bin_inst[6:0];
always_comb
begin
    // Default values to ensure purely combinational logic
    rd = 0;
    rs1 = 0;
    rs2 = 0;
    imm12 = 0;
    fun3 = 0;
    fun7 = 0;

    case (opcode)
        7'b0110011: begin // R-type
            rd = bin_inst[11:7];
            fun3 = bin_inst[14:12];
            rs1 = bin_inst[19:15];
            rs2 = bin_inst[24:20];
            fun7 = bin_inst[31:25];
        end
        7'b0010011, 7'b0000011, 7'b1100111: begin // I-type
            rd = bin_inst[11:7];
            fun3 = bin_inst[14:12];
            rs1 = bin_inst[19:15];
            imm12 = bin_inst[31:20];
        end
        7'b1100011: begin // B-type
            imm12 = {bin_inst[31], bin_inst[7], bin_inst[30:25], bin_inst[11:8]};
            fun3 = bin_inst[14:12];
            rs1 = bin_inst[19:15];
            rs2 = bin_inst[24:20];
        end
        7'b0100011: begin // S-type
            imm12 = {bin_inst[31:25], bin_inst[11:7]};
            fun3 = bin_inst[14:12];
            rs1 = bin_inst[19:15];
            rs2 = bin_inst[24:20];
        end
        7'b0110111, 7'b0010111: begin // U-type
            imm12 = bin_inst[31:12];
            rd = bin_inst[11:7];
        end
        7'b1101111: begin // J-type (JAL)
            imm12 = {bin_inst[31], bin_inst[19:12], bin_inst[20], bin_inst[30:21]};
            rd = bin_inst[11:7];
         end
endcase
end
endmodule