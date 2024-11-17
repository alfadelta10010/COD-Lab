/*
instruction memory
its a 2d array
*/
module instr_mem #(parameter W=32, L=1024) (addr,instr,reset);

input logic reset;
input logic [W-1:0] addr;
output logic [W-1:0] instr;
logic [W-1:0] mem [0:L-1];

	initial 
	begin
    $readmemh("program_dump.hex", mem);
	end

//assign instr=reset?0:mem[addr];
always_comb
	if (reset)
		instr=32'b0;
	else
		instr=mem[addr];

endmodule


//module t_instr_mem;
//	parameter W=32, L=1024;
//	logic reset;
//	logic [W-1:0] addr;
//	wire [W-1:0] instr;
//	
//	instr_mem dut (.addr(addr),.instr(instr),.reset(reset));
//	initial
//		begin
//			for (int i = 0; i < L; i++) 
//			begin
//				dut.mem[i] = i;
//			end
//			reset=1;addr=32'b0;
//			#5;
//			reset=0;
//			for (int i = 0; i < L; i++) 
//			begin
//				addr=i;
//				#5;
//			end
//			reset=1;addr=32'h10;
//			#5;
//		end
//	$finish
//endmodule
	
	






