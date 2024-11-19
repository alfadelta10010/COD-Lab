module control_unit(
    input logic [6:0] opcode,
    input logic [2:0] funct3,
    output logic [2:0] mem_control,
    output logic [1:0] alu_op,
    output logic reg_write,mem_read,mem_write,
    output logic alu_src,
    output logic mem_to_reg
    );
    
    always_comb
    begin
        alu_op = 2'b0;
        alu_src = 1'b0;
        mem_to_reg = 1'b0;
        reg_write = 1'b0;
        mem_read = 1'b0;
        mem_write = 1'b0;
        case(opcode)
            7'b0110011 : begin  // R Type
                reg_write = 1'b1;
                alu_op = 2'b10;
                end
            7'b0000011 : begin  // Load
                alu_src = 1'b1;
                mem_read = 1'b1;
                mem_to_reg = 1'b1;
                reg_write = 1'b1;
                alu_op = 2'b00;
                case(funct3)
					3'b000: mem_control = 3'b000; // LB
					3'b001: mem_control = 3'b001; // LH
					3'b010: mem_control = 3'b010; // LW
					3'b100: mem_control = 3'b011; // LBU
					3'b101: mem_control = 3'b100; // LHU
					default: mem_control = 3'bX;  // Malformed instruction
				endcase
                end
            7'b0100011 : begin  // Store
                alu_src = 1'b1;
                alu_op = 2'b00;
                mem_write = 1'b1;
                end
            7'b1100011 : begin  //  Branch
                mem_to_reg = 1'bx;
                end
        endcase
     end                   
endmodule