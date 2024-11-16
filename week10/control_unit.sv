module control_unit (
    input logic [6:0] opcode,
    input logic [2:0] func3,
    input logic [6:0] func7,
    output logic wr_en,
    output logic branch,
    output logic alumux,
    output logic [3:0] aluop,
    output logic mem_read,
    output logic mem_write,
    output logic mem_reg
);

    always @(*) begin
        wr_en = 1'b0;
        branch = 1'b0;
        alumux = 1'b0;
        aluop = 4'b0000;
        mem_read = 1'b0;
        mem_write = 1'b0;
        mem_reg = 1'b0;

        case(opcode)
            7'b0110011: begin  // R-type 
                wr_en = 1'b1;
                alumux = 1'b0;
                mem_reg = 1'b0;

                case (func3)
                    3'b000: aluop = (func7 == 7'b0000000) ? 4'b0010 : 4'b0110; 
                    3'b001: aluop = 4'b1000;  
                    3'b101: aluop = (func7 == 7'b0000000) ? 4'b1001 : 4'b1010; 
                    3'b110: aluop = 4'b0001; 
                    3'b111: aluop = 4'b0000; 
                    default: aluop = 4'bxxxx; 
                endcase
            end

            7'b0010011: begin  // I-type 
                wr_en = 1'b1;
                alumux = 1'b1;
                mem_reg = 1'b0;

                case (func3)
                    3'b000: aluop = 4'b0010;  
                    3'b001: aluop = 4'b1000;  
                    3'b101: aluop = (func7 == 7'b0000000) ? 4'b1001 : 4'b1010; 
                    3'b110: aluop = 4'b0001; 
                    3'b111: aluop = 4'b0000;  
                    default: aluop = 4'bxxxx; 
                endcase
            end

            7'b0000011: begin  // Load 
                wr_en = 1'b1;
                alumux = 1'b1;
                mem_read = 1'b1;
                mem_write = 1'b0;
                mem_reg = 1'b1;  
            end

            7'b0100011: begin  // Store 
                wr_en = 1'b0;
                alumux = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b1;
                mem_reg = 1'b0;
            end

            7'b1100011: begin  // Branch 
                wr_en = 1'b0;
                branch = 1'b1;
                alumux = 1'b0;
                
                case (func3)
                    3'b000: aluop = 4'b0110;  
                    3'b001: aluop = 4'b0110;  
                    3'b100: aluop = 4'b0111;  
                    3'b101: aluop = 4'b0111;  
                    default: aluop = 4'bxxxx;
                endcase
					 end
          

           
        endcase
    end
endmodule
