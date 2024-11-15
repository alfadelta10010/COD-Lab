// Write a SV program for Instruction Memory

module Instruction_Memory #(parameter XLEN = 5)(
    input logic [31:0] pcin,
    output logic [31:0] dout
);
    // Memory declaration with constant size based on parameter
    logic [7:0] mem [0:(2**XLEN)-1] = '{
        8'bX, 8'bX, 8'bX, 8'bX,
        8'bX, 8'bX, 8'bX, 8'bX,
        8'bX, 8'bX, 8'bX, 8'bX,
        8'hX, 8'hX, 8'hX, 8'hX,
        8'b00, 8'b00, 8'b00, 8'b00,
        8'h00, 8'h84, 8'h89, 8'h33,
        8'h10, 8'h10, 8'h04, 8'h93,
        8'h01, 8'h00, 8'h04, 8'h13
    };

    logic [XLEN-1:0] addr;

    // Address calculation in combinational logic
    always_comb begin
        addr = pcin[XLEN-1:0];
    end

    // Fetching instruction from memory
    assign dout = {mem[addr + 3], mem[addr + 2], mem[addr + 1], mem[addr]};
endmodule