module regfile(input logic [4:0]rs1_addr,rs2_addr,rd_addr,input logic reg_write,input logic [31:0]wr_data, input logic reset,output logic [31:0]rs1_data,rs2_data);
logic [31:0]rfile[0:31];
always_comb
begin
	if(~reset)
	begin
		rs1_data=rfile[rs1_addr];
		rs2_data=rfile[rs2_addr];
	end
	else
	begin
		rs1_data=32'b0;
		rs2_data=32'b0;
	end
end
always_ff @(posedge reg_write or posedge reset) begin
        if (reset) begin
            for (int i = 0; i < 32; i++) begin
                rfile[i] = 32'b0; // Clear all registers
            end
        end
		  else if (reg_write) begin
            rfile[rd_addr] = wr_data; // Write data to the specified register
        end
		  end
endmodule