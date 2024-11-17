module Add4 (
    input logic [31:0] A,
    output logic [31:0] B
);
    always_comb begin
        B = A + 32'd4;  // Increment input by 4
    end
endmodule
