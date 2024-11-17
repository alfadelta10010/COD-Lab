module DataMem #(parameter SIZE = 12)(addr, dataW, dataR, memR, memW, clk);

	output logic [31:0] dataR;
	input bit clk;
	input logic [31:0] dataW;
	input logic [SIZE-1:0] addr;
	input bit memR;
	input bit memW;
	logic [7:0] datafile [0 : 2**SIZE - 1];
	always @(memR) begin
		if(memR == 1) begin
			dataR[7:0] <= datafile[addr];
			dataR[15:8] <= datafile[addr+1];
			dataR[23:16] <= datafile[addr+2];
			dataR[31:24] <= datafile[addr+3];
		end
		else
			dataR <= 32'bX;
	end
	always @(posedge clk) begin
		if(memW == 1) begin
			if(dataW[31:24] != 8'bX)
				datafile[addr+3] <= dataW[31:24];
			else
				datafile[addr+3] <= 8'b0;
			if(dataW[23:16] != 8'bX)
				datafile[addr+2] <= dataW[23:16];
			else
				datafile[addr+3] <= 8'b0;
			if (dataW[15:8] != 8'bX)
				datafile[addr+1] <= dataW[15:8];
			else
				datafile[addr+3] <= 8'b0;
			if (dataW[7:0] != 8'bX)
				datafile[addr] <= dataW[7:0];
			else 
				datafile[addr] <= 8'b0;
		end
	end
endmodule
