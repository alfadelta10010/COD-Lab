module mem_access#(parameter S=32)(
    input logic [31:0] data,           // Data for write operations
    input logic [2:0] f3,              // Function code for load/store operations
    input logic [S-1:0] addr,          // Address input
    input logic clk, mR, mW,           // Clock, Read, and Write enables
    output logic [31:0] mout           // Data output for read operations
);

    // Memory storage: 8-bit wide array, size is 2*S bytes
    logic [7:0] df[2*S-1:0];

    // Read logic
    always @(*) begin
        mout = 32'd0; // Default output to zero
        if (mR) begin
            case (f3)
                3'b000: mout = {{24{df[addr][7]}}, df[addr]};                                // lb - load byte, sign-extended
                3'b001: mout = {{16{df[addr+1][7]}}, df[addr+1], df[addr]};                  // lh - load halfword, sign-extended
                3'b010: mout = {df[addr+3], df[addr+2], df[addr+1], df[addr]};               // lw - load word
                3'b100: mout = {24'd0, df[addr]};                                            // lbu - load byte, zero-extended
                3'b101: mout = {16'd0, df[addr+1], df[addr]};                                // lhu - load halfword, zero-extended
                default: mout = 32'd0;                                                       // Default case
            endcase
        end
    end

    // Write logic triggered on positive edge of clock
    always @(posedge clk) begin
        if (mW) begin
            case (f3)
                3'b000: df[addr] <= data[7:0];                                                // sb - store byte
                3'b001: {df[addr+1], df[addr]} <= data[15:0];                                 // sh - store halfword
                3'b010: {df[addr+3], df[addr+2], df[addr+1], df[addr]} <= data;               // sw - store word
            endcase
        end
    end
endmodule
