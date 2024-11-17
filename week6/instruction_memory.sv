module instruction_memory #(parameter N=32,DL=1024)
(
    input logic [N-1:0] pc,
	 input logic reset,
    output logic [N-1:0] inst
);

    logic [N-1:0] memory [0:DL-1];
	 
    always_comb 
	 begin
        if (reset) 
            inst = 32'h00000013; 
        else 
            inst = memory[pc];  
        end
		  
		   
		  initial begin
        $readmemh("OneDrive/Desktop/5th sem/COD/RISC-V Lab/program_dump.hex", memory);
        end

endmodule
