module dmem
  ( input logic [31:0] rs2_data,
    input logic [31:0] aluresult,
	input logic mem_read,
	input logic mem_write,
	output logic [31:0] data_out
    );

logic [0:31] memory [31:0];

	assign data_out = mem_read ? memory[aluresult] : 32'b0; 

always@(posedge mem_write)
	begin
		memory[aluresult] = rs2_data;
	end
endmodule
