module wb(
    input logic [31:0] md,      // Memory data
    input logic [31:0] ar,      // ALU result
    input logic mtr,            // Memory-to-register control
    input logic [2:0] f3,       // Function code to determine data width
    output logic [31:0] wbd     // Write-back data
);

    always_comb begin
        if (mtr) begin
            // Choose data width based on f3
            case (f3)
                3'b000: wbd = {24'b0, md[7:0]};         // Byte (8-bit)
                3'b001: wbd = {16'b0, md[15:0]};        // Half-word (16-bit)
                3'b010: wbd = md;                       // Word (32-bit)
                3'b011: wbd = {md, md};                 // Double-word (64-bit, sign-extended in this example)
                default: wbd = md;                      // Default to full word
            endcase
        end else begin
            wbd = ar;  // ALU result
        end
    end
endmodule
