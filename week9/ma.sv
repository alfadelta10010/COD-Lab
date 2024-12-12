module ma #(parameter n=32)(
    input logic [n-1:0] alu_out,  // Address input (from ALU output)
    input logic [n-1:0] data_in,  // Data input (from register to be written to memory)
    input logic mem_read,         // Memory read control signal
    input logic mem_write,        // Memory write control signal
    output logic [n-1:0] data_out // Data output (read from memory)
);

    // Memory array (1024 words, each of width n-bits)
    logic [n-1:0] memory_array [0:1023];

    always_comb begin
        // Handle memory read
        if (mem_read)
            data_out = memory_array[alu_out];  // Read data from the memory address provided by alu_out
        else
            data_out = '0;  // Default value when not reading

        // Handle memory write
        if (mem_write)
            memory_array[alu_out] = data_in;  // Write data to the memory at the address provided by alu_out
    end

endmodule
