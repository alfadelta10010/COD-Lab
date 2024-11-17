module control_unit(
    input logic[6:0] opcode,
    input logic [2:0] fn3,
    output logic alu_src, reg_write, mem_read, mem_write, branch_control, data_type,
    output logic[1:0] data_size, output logic mem_to_reg, jalr
    );
    
    always_comb begin
        case(opcode)
            // R
            7'b0110011: begin
                        alu_src = 1'b0;
                        reg_write = 1'b1;
                        mem_read = 1'b0;
                        mem_write = 1'b0;
                        branch_control = 1'b0;
                        mem_to_reg = 1'b0;
                        jalr = 1'b0;
                        end
            // I (non L)
            7'b0010011: begin
                        alu_src = 1'b1;
                        reg_write = 1'b1;
                        mem_read = 1'b0;
                        mem_write = 1'b0;
                        branch_control = 1'b0;
                        mem_to_reg = 1'b0;
                        jalr = 1'b0;
                        end
            // L
            7'b0000011: begin
                        alu_src = 1'b1;
                        reg_write = 1'b1;
                        mem_read = 1'b1;
                        mem_write = 1'b0;
                        branch_control = 1'b0;
                        mem_to_reg = 1'b1;
                        jalr = 1'b0;
                        end
            // S
            7'b0000011: begin
                        alu_src = 1'b1;
                        reg_write = 1'b0;
                        mem_read = 1'b0;
                        mem_write = 1'b1;
                        branch_control = 1'b0;
                        mem_to_reg = 1'bX;
                        jalr = 1'b0;
                        end
            // B
            7'b0100011: begin
                        alu_src = 1'b0;
                        reg_write = 1'b0;
                        mem_read = 1'b0;
                        mem_write = 1'b0;
                        branch_control = 1'b1;
                        mem_to_reg = 1'bX;
                        jalr = 1'b0;
                        end
            // J
            7'b1101111: begin
                        alu_src = 1'b0;
                        reg_write = 1'b0;
                        mem_read = 1'b0;
                        mem_write = 1'b0;
                        branch_control = 1'b1;
                        mem_to_reg = 1'b0;
                        jalr = 1'b0;
                        end
            
            // U       
            7'b0110111, 7'b0010111: begin
                        alu_src = 1'b1;
                        reg_write = 1'b0;
                        mem_read = 1'b0;
                        mem_write = 1'b0;
                        branch_control = 1'b0;
                        mem_to_reg = 1'b0;
                        jalr = 1'b0;
                        end 
            
            // JALR            
            7'b1100111: begin
                        alu_src = 1'b0;
                        reg_write = 1'b1;
                        mem_read = 1'b0;
                        mem_write = 1'b0;
                        branch_control = 1'b1;
                        mem_to_reg = 1'b0;
                        jalr = 1'b1;
                        end
        endcase
        
        // 00 = byte, 01 = half word, 10 = word
        // signed = 1, unsiged = 0
        case(fn3)
			// signed byte
            3'b000: begin
                    data_size = 2'b00;
                    data_type = 1'b1;
                    end
			// signed half word
            3'b001: begin
                    data_size = 2'b01;
                    data_type = 1'b1;
                    end
			// word
            3'b010: begin
                    data_size = 2'b10;
                    data_type = 1'bX;
					end
			// unsigned byte
            3'b100: begin
                    data_size = 2'b00;
                    data_type = 1'b0;
                    end
			// unsigned half word
            3'b101: begin
                    data_size = 2'b01;
                    data_type = 1'b0;
                    end

			default: begin
					 data_size = 2'bXX;
					 data_type = 1'bX;
				 	 end
		endcase
    end
endmodule
