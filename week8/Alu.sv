module alu #(parameter n=32)(
    input logic [n-1:0] a,
    input logic [n-1:0] b,
    input logic [3:0] alu_op,
    output logic [n-1:0] result,
    output logic zero
);
    logic overflow;

    always_comb begin // Use always_comb for combinational logic
        zero = 0; // Initialize zero to 0
        case(alu_op)
            4'b0000: result = a & b;
            4'b0001: result = a | b;
            4'b0010: begin
                {overflow, result} = a + b; // Handle overflow
            end
            4'b0110: begin
                result = a - b;
                if (result == 0)
                    zero = 1;
                else
                    zero = 0;
            end
            default: result = 0; // Default case to avoid latches
        endcase
    end
endmodule
