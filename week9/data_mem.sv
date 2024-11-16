module data_mem(
    input bit clk,
    input bit mem_read,mem_write,
    input logic [31:0] data_in,
    input logic [11:0] addr,
    output logic [31:0] data_out
    );
    logic [7:0] data [0:4095];
    
    always @(mem_read) begin
        if(mem_read == 1) begin
			data_out[7:0] <= data[addr];
			data_out[15:8] <= data[addr+1];
			data_out[23:16] <= data[addr+2];
			data_out[31:24] <= data[addr+3];
		end
		else
			data_out <= 32'bX;
	end
	
	always @(posedge clk) begin
		if(mem_write == 1) begin
			if(data_in[31:24] != 8'bX)
				data[addr+3] <= data_in[31:24];
			else
				data[addr+3] <= 8'b0;
			if(data_in[23:16] != 8'bX)
				data[addr+2] <= data_in[23:16];
			else
				data[addr+3] <= 8'b0;
			if (data_in[15:8] != 8'bX)
				data[addr+1] <= data_in[15:8];
			else
				data[addr+3] <= 8'b0;
			if (data_in[7:0] != 8'bX)
				data[addr] <= data_in[7:0];
			else 
				data[addr] <= 8'b0;
		end
	end
endmodule