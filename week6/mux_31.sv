module mux_31 #(parameter N = 32) (a, b, c, s, y);
    input logic [N-1:0] a; // Input 0
    input logic [N-1:0] b; // Input 1
    input logic [N-1:0] c; // Input 2
    input logic [1:0] s;   // 2-bit select signal
    output logic [N-1:0] y;
    
    always_comb begin
        case (s)
            2'b00: y = a; // Select input a
            2'b01: y = b; // Select input b
            2'b10: y = c; // Select input c
            default: y = {N{1'b0}}; // Default to 0
        endcase
    end
endmodule