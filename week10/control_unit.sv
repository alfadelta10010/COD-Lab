module control_unit#(parameter n=32)(
    input logic [6:0]opcode,
    input logic [2:0] func3,
    input logic [6:0] func7,
    output logic alu_src,            // ALU source
    output logic branch_control,     // Branch control signal
    output logic write_enable,       // Write enable
    output logic [3:0] alu_opra,     // ALU operation code
    output logic mem_reg,            // Memory register control
    output logic mem_read,           // Memory read control
    output logic mem_write           // Memory write control
);

always @(*) begin
    case(opcode)
        7'b0110011: begin   // R-type instructions
            case(func3)
                3'b000: begin  // R-type add
                    if (func7 == 7'b0000000) begin
                        alu_src = 0;
                        branch_control = 0;
                        write_enable = 1;
                        alu_opra = 4'b0000;
                        mem_reg = 1;
                        mem_read = 0;
                        mem_write = 0;
                    end
                    else if (func7 == 7'b1000000) begin  // R-type sub
                        alu_src = 0;
                        branch_control = 0;
                        write_enable = 1;
                        alu_opra = 4'b0001;
                        mem_reg = 1;
                        mem_read = 0;
                        mem_write = 0;
                    end
                end
                3'b100: begin  // R-type xor
                    alu_src = 0;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b1000;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b110: begin  // R-type or
                    alu_src = 0;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b1100;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b111: begin  // R-type and
                    alu_src = 0;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b1110;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b001: begin  // R-type shift left logical
                    alu_src = 0;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b0010;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b101: begin
                    if (func7 == 7'b0000000) begin  // R-type shift right logical
                        alu_src = 0;
                        branch_control = 0;
                        write_enable = 1;
                        alu_opra = 4'b1010;
                        mem_reg = 1;
                        mem_read = 0;
                        mem_write = 0;
                    end
                    else if (func7 == 7'b1000000) begin  // R-type shift right arithmetic
                        alu_src = 0;
                        branch_control = 0;
                        write_enable = 1;
                        alu_opra = 4'b1011;
                        mem_reg = 1;
                        mem_read = 0;
                        mem_write = 0;
                    end
                end
                3'b010: begin  // R-type set less than
                    alu_src = 0;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b0100;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b011: begin  // R-type shift less than (unsigned)
                    alu_src = 0;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b0110;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
            endcase
        end
        7'b0010011: begin  // I-type instructions
            case(func3)
                3'b000: begin  // I-type add
                    alu_src = 1;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b0000;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b100: begin  // I-type xor
                    alu_src = 1;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b1000;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b110: begin  // I-type or
                    alu_src = 1;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b1100;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b111: begin  // I-type and
                    alu_src = 1;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b1110;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b001: begin  // I-type shift left logical
                    alu_src = 1;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b0010;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b101: begin
                    if (func7 == 7'b0000000) begin  // I-type shift right logical
                        alu_src = 1;
                        branch_control = 0;
                        write_enable = 1;
                        alu_opra = 4'b1010;
                        mem_reg = 1;
                        mem_read = 0;
                        mem_write = 0;
                    end
                    else if (func7 == 7'b1000000) begin  // I-type shift right arithmetic
                        alu_src = 1;
                        branch_control = 0;
                        write_enable = 1;
                        alu_opra = 4'b1011;
                        mem_reg = 1;
                        mem_read = 0;
                        mem_write = 0;
                    end
                end
                3'b010: begin  // I-type set less than immediate
                    alu_src = 1;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b0100;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
                3'b011: begin  // I-type set more than immediate
                    alu_src = 1;
                    branch_control = 0;
                    write_enable = 1;
                    alu_opra = 4'b0110;
                    mem_reg = 1;
                    mem_read = 0;
                    mem_write = 0;
                end
            endcase
        end
        7'b0000011: begin  // Load word (I-type)
            alu_src = 1;
            branch_control = 0;
            write_enable = 1;
            alu_opra = 4'b0000;
            mem_reg = 1;
            mem_read = 1;
            mem_write = 0;
        end
        7'b0100011: begin  // Store word (S-type)
            alu_src = 1;
            branch_control = 0;
            write_enable = 0;
            alu_opra = 4'b0000;
            mem_reg = 1;
            mem_read = 0;
            mem_write = 1;
        end
        7'b1100011: begin  // Branch equal (B-type)
            alu_src = 0;
            branch_control = 1;
            write_enable = 0;
            alu_opra = 4'b0001;
            mem_reg = 0;
            mem_read = 0;
            mem_write = 0;
        end
    endcase
end

endmodule
