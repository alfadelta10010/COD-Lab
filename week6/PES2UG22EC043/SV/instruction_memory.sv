module instruction_memory (reset, pc_in, instruction_out);
    input logic[31:0] pc_in;
    input logic reset;
    output logic[31:0] instruction_out;
    
    reg[31:0] memory[0:255];
    
    initial begin 
        $readmemh("/home/chetan/documents/program_dump.hex", memory);
    end
    
    assign instruction_out = memory[pc_in];
    
    always_ff @(posedge reset)
    begin
    if(reset)
        begin
            for(int i = 0; i < 1023; i++)
                memory[i] <= 32'b1;
        end
    end
endmodule
