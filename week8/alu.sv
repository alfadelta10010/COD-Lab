module alu(
    input logic [31:0] rs1,       // First register input
    input logic [31:0] out,       // Second input (mux output)
    input logic [3:0] alu_op,     // ALU operation code
    output logic [31:0] alu_out,  // ALU result
    output bit zero               // Zero flag output
);

    always_comb begin
        case(alu_op)
            4'b0000: alu_out = rs1 & out; // AND
            4'b0001: alu_out = rs1 | out; // OR
            4'b0010: alu_out = rs1 + out; // ADD
            4'b0110: alu_out = rs1 - out; // SUB
            default: alu_out = 32'b0;    // Default case
        endcase

        // Set zero flag
        if (alu_out == 32'b0)
            zero = 1;  // Zero flag is set if ALU output is zero
        else
            zero = 0;  // Zero flag is cleared otherwise
    end

endmodule

module ex_and(
    input bit zero,         // Zero flag from previous stage
    input bit branch,       // Branch control signal
    output bit and_out      // AND result for branch condition
);

    always_comb begin
        and_out = zero & branch; // AND result for branch decision
    end

endmodule

module ex_mux #(parameter n = 32) (
    input logic [n-1:0] rs2,         // Input from rs2
    input logic [n-1:0] immfinal,    // Input from immfinal
    input logic alu_src,              // Input for ALU source selection
    output logic [n-1:0] out         // Output
);
    // Mux logic here: select between rs2 and immfinal based on alu_src
    always_comb begin
        if (alu_src) begin
            out = immfinal;  // If alu_src is 1, select immfinal
        end else begin
            out = rs2;       // Otherwise, select rs2
        end
    end
endmodule
