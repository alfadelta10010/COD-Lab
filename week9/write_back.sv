module writeback_mux (
    input logic [31:0] alu_out,       // ALU output (from EX stage)
    input logic [31:0] data_out,      // Data from memory (from MEM stage)
    input logic mem_to_reg,           // Control signal from main control unit
    output logic [31:0] write_data    // Data to write back to register file
);

 
    always_comb begin
        if (mem_to_reg)
            write_data = data_out;    // Select data from memory
        else
            write_data = alu_out;     // Select ALU output
    end

endmodule

