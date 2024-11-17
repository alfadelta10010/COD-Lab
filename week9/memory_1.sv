module memory_1 #(parameter N=32, D=1024)(
    input logic [N-1:0] alu_result,     
    input logic [N-1:0] data_in,        
    input logic mem_read,               
    input logic mem_write,              
    input logic [2:0] width,            
    output logic [N-1:0] data_out       
);
    logic [7:0] memory1 [0:D*4-1]; // Byte-addressable memory 

    logic [31:0] temp_data_out;

    always @(*) begin
        if (mem_write) begin
            case (width)
                3'b000: memory1[alu_result] = data_in[7:0];                       
                3'b001: begin                                                     
                    memory1[alu_result] = data_in[7:0];
                    memory1[alu_result + 1] = data_in[15:8];
                end
                3'b010: begin                                                    
                    memory1[alu_result] = data_in[7:0];
                    memory1[alu_result + 1] = data_in[15:8];
                    memory1[alu_result + 2] = data_in[23:16];
                    memory1[alu_result + 3] = data_in[31:24];
                end
					 
            endcase
        end

        if (mem_read) begin
            case (width)
                3'b000: temp_data_out = {{{24{memory1[alu_result][7]}}, memory1[alu_result]}};
                3'b001: temp_data_out = {{16{memory1[alu_result + 1][7]}}, memory1[alu_result + 1], memory1[alu_result]}; 
                3'b010: temp_data_out = {memory1[alu_result + 3], memory1[alu_result + 2], memory1[alu_result + 1], memory1[alu_result]}; 
					 3'b011: temp_data_out = {{24{1'b0}}, memory1[alu_result]};
					 3'b100: temp_data_out = {{16{1'b0}}, memory1[alu_result + 1], memory1[alu_result]};
            endcase
        end
        data_out = temp_data_out;
    end
endmodule
