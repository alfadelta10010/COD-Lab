//module data_mem #(parameter N=32, W=32, L=1024) (mem_write, mem_read, data_out, alu_result, data_in);
//
//logic [W-1:0] mem [0:L-1];
//input logic [N-1:0]data_in,alu_result;
//output logic [N-1:0]data_out;
//input logic mem_write,mem_read;
//
//always @(posedge mem_write or posedge mem_read)
//begin
//	if (mem_write)
//		mem[alu_result]=data_in;
//	else if(mem_read)
//		data_out=mem[alu_result];
//end
//endmodule

module data_mem #(parameter N = 32, W = 32, L = 1024) (
    input logic mem_write, mem_read,
    input logic [N-1:0] data_in,
    input logic [N-1:0] alu_result,
    output logic [N-1:0] data_out
);

    // Memory array
    logic [W-1:0] mem [0:L-1];

    // Write operation
    always_comb
	 begin
	 data_out=0;
        if (mem_write)
            mem[alu_result] = data_in;
			if (mem_read)
				data_out = mem[alu_result];		
			
    end
endmodule
