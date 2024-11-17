module instmem(
    input logic [31:0] pc,
    output logic [31:0] i
   // logic [7:0] mem [31:0]
);
logic [7:0] mem [127:0];
    // Initialize instruction memory on the positive edge of the clock
    initial begin
        // (add x5, x10, x12)
        mem[0] <= 8'b10110011;
        mem[1] <= 8'b00000010;
        mem[2] <= 8'b11000101;
        mem[3] <= 8'b00000000;
        //(lb x10,32(x12))
        mem[4]<= 8'b00000011;
        mem[5] <= 8'b00000101;
        mem[6] <= 8'b11000101;
        mem[7] <= 8'b00000010;
        //(xor x15,x22,x27)
        mem[8] <= 8'b10110011;
        mem[9] <= 8'b01000111;
        mem[10] <= 8'b10111011;
        mem[11] <= 8'b00000001;
        //addi x15,x22,2
        mem[12] <=8'b10010011;
        mem[13] <=8'b00000111;
        mem[14] <=8'b00101011;
        mem[15] <=8'b00000000;
   end
    /// Concatenate the 4 memory addresses to form a 32-bit instruction
    assign i = {mem[pc+3], mem[pc+2], mem[pc+1], mem[pc+0]};
endmodule
