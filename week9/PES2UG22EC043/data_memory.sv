module data_memory(
    input logic /*clk,*/ reset, memory_read, memory_write, data_type,
    input logic[1:0] data_size,
    input logic[31:0] address, data_in,
    output logic[31:0] data_out
    );
    
    reg[7:0] memory[0:255];
    
    always @(posedge reset)
        begin
        if(reset)
            begin
            for(int i = 0; i < 1024; i++)
                begin
                memory[i] <= 8'b0;
                end
            end
        end
    
    always_comb
    begin
    if(memory_read)
        case({data_type, data_size})
			// unsigned byte
            3'b000: data_out = {24'b0, memory[address]};
			// unsigned half word
            3'b001: data_out = {16'b0, memory[address + 1], memory[address]};
			// signed byte
            3'b100: data_out = {{24{memory[address][7]}}, memory[address]};
			// signed half word
            3'b101: data_out = {{16{memory[address][15]}}, memory[address + 1], memory[address]};
			// word
            3'bX10: data_out = {memory[address + 3], memory[address + 2], memory[address + 1], memory[address]};
		endcase
        
    if(memory_write)
        case(data_size)
			// byte
            2'b00: {memory[address]} = data_in[7:0];
			// half word
			2'b01: {memory[address + 1], memory[address]} = data_in[15:0];
			// word
			2'b10: {memory[address + 3], memory[address + 2], memory[address + 1], memory[address]} = data_in;
        endcase
    end
endmodule

