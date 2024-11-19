module mem_access(
    input  bit clk,
    input bit mem_write, mem_read,
    input logic [31:0] addr, data_in,
    input logic [2:0] mem_control,
    output logic [31:0] data_out
    );
    
    logic [11:0] addr_i;
    logic [31:0] data_w_i, data_r_i;
    
    data_mem memory(.clk(clk), .addr(addr_i), .data_in(data_w_i), .data_out(data_r_i), .mem_read(mem_read), .mem_write(mem_write));
    
    always_comb begin
		case(mem_control)
			3'b000: begin //LB
				if (data_r_i[7] == 1'b1)
					data_out = {24'b1, data_r_i[7:0]};
				else 
					if (data_r_i[7] == 1'b0)
						data_out = {24'b0, data_r_i[7:0]};
			end
			3'b001: begin //LH
				if (data_r_i[15] == 1'b1)
					data_out = {16'b1, data_r_i[15:0]};
				else 
					if (data_r_i[7] == 1'b0)
						data_out = {16'b0, data_in[15:0]};
			end
			3'b010: begin //LW
				data_out = data_r_i;
			end
			3'b011: begin //LBU
				data_out = {24'b0, data_r_i[7:0]};
			end
			3'b100: begin //LHU
				data_out = {16'b0, data_r_i[15:0]};
			end
			3'b101: begin // SB
				data_w_i = {24'b0, data_r_i[7:0]};
			end
			3'b110: begin // SH
				data_w_i = {16'b0, data_in[15:0]};
			end
			3'b111: begin // SW
				data_w_i = data_in;
			end
		endcase
    end
endmodule