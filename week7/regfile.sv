module regfile #(parameter N=32)(
   input logic clk,
   input logic reset,
	input logic [4:0] rs1,
   input logic [4:0] rs2,
   input logic [4:0] rd,
   input logic write_en,
   input logic [N-1:0] write_data,
   output logic [N-1:0] rs1_out,
   output logic [N-1:0] rs2_out
);

    logic [N-1:0] rf [N-1:0];
//write to the register file on rising edge of the clock if enabled
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            integer i;
            for (i=0; i<32; i=i+1) begin
                rf[i] <= 0;//initialize registers to 0 on reset
            end
        end 
		  else if (write_en && rd!=5'b0) begin
           rf[rd] <= write_data;//write date to destination register
        end
    end
    always @(*) begin
        rs1_out = rf[rs1];
        rs2_out = rf[rs2];
    end
endmodule