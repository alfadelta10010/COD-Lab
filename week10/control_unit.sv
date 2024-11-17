module control_unit (
    input logic [6:0] opcode,
    input logic [2:0] func3,
    input logic [6:0] func7,
    output logic wr_en,
    output logic branch,
    output logic alumux,
    output logic [2:0] aluop,
    output logic mem_read,
    output logic mem_write,
    output logic mem_reg,
	 output logic [2:0] width
);

    always @(*) begin
        wr_en = 1'b0;
        branch = 1'b0;
        alumux = 1'b0;
        aluop = 3'b0000;
        mem_read = 1'b0;
        mem_write = 1'b0;
        mem_reg = 1'b0;

        case(opcode)
            7'b0110011: begin  // R-type 
                wr_en = 1'b1;
                alumux = 1'b0;
                mem_reg = 1'b0;
					 aluop = 3'b000;
                mem_read = 1'b0;
                mem_write = 1'b0;
					 branch = 1'b0;
             
            end

            7'b0010011: begin  // I-type 
                wr_en = 1'b1;
                alumux = 1'b1;
                mem_reg = 1'b0;
                aluop = 3'b001;
					 mem_read = 1'b0;
                mem_write = 1'b0;
                branch = 1'b0;
            end

            7'b0000011: begin  // Load 
					wr_en = 1'b1;
               alumux = 1'b1;
               mem_read = 1'b1;
               mem_write = 1'b0;
               mem_reg = 1'b1;
					aluop = 3'b010;
					branch = 1'b0;
					case (func3)
						3'b000: width=3'b000;
						3'b001: width=3'b001;
						3'b010: width=3'b010;
						3'b100: width=3'b011;
						3'b101: width=3'b100;
					endcase
            end

            7'b0100011: begin   // Store 
                wr_en = 1'b0;
                alumux = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b1;
                mem_reg = 1'b0;
					 aluop = 3'b011;
					 branch = 1'b0;
					 case (func3)
						3'b000: width=3'b000;
						3'b001: width=3'b001;
						3'b010: width=3'b010;
					endcase
            end

            7'b1100011: begin  // Branch 
                wr_en = 1'b0;
                branch = 1'b1;
                alumux = 1'b0;
					 aluop = 3'b100;
					 mem_read = 1'b0;
                mem_write = 1'b0;
                
               
            end

        endcase
    end
endmodule
