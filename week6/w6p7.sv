module inst_mem(
    output logic [31:0] instruction,  // 32-bit instruction output
    input logic [31:0] address,       // Word addressable input address (32-bit)
    input logic clk                    // Clock signal
);

    // 64 x 32-bit instruction memory (64 words = 256 bytes)
    logic [31:0] memory [0:63];        // Memory array with 64 32-bit words

    // Fetch instruction on rising edge of clock
    always_ff @(posedge clk) begin
        instruction <= memory[address];  // Directly use word-addressed memory
    end
endmodule
