module register_block(rs1_addr,rs2_addr,rd_addr,reg_write,wr_data,reset,rs1_data,rs2_data);

input logic reg_write;
input logic reset;

input logic [4:0]rs1_addr,rs2_addr,rd_addr;
input logic [31:0]wr_data;

output logic [31:0]rs1_data,rs2_data;

logic [31:0]register[0:31];

always_comb
begin
	if(~reset)
	begin
		rs1_data=register[rs1_addr];
		rs2_data=register[rs2_addr];
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
                register[i] = 32'b0; // Clear all registers
            end
        end
		  else if (reg_write) 
		  begin
            register[rd_addr] = wr_data; // Write data to the specified register
        end
		  end
endmodule



