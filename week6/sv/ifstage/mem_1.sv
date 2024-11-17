module mem_1 (input logic clk,input logic [31:0] addr, output logic [31:0] dout);
    // Memory with 1024 locations, each 32 bits wide
    reg [31:0] mem [0:1023];
    // Initialize memory with hardcoded instructions
    initial begin
        mem[0] = 32'b00010000000000000000010100010111;  // 10000517 (hex)
        mem[1] = 32'b00000000000001010000010100010011;  // 00050513 (hex)
        mem[2] = 32'b00000000000001010010010110000011;  // 00052583 (hex)
        mem[3] = 32'b00000000110001011000011010110011;  // 00C586B3 (hex)
        mem[4] = 32'b00000000110101010010010000100011;  // 00D52423 (hex)
    end
    always_ff @(posedge clk) begin
        dout <= mem[addr[31:0]];
    end
endmodule
