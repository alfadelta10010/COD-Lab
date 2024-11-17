module alu_ex (
  input logic [31:0] rs1_data,
  input logic [31:0] mux_op,
  input logic [3:0] Alu_op,
  output logic [31:0] alu_res,
  output logic zero
);

always_comb begin
  // Default values to avoid latches
  alu_res = 32'b0;
  zero = 1'b0;

  case (Alu_op)
    4'b0000: begin // AND
      alu_res = rs1_data & mux_op;
    end
    4'b0001: begin // OR
      alu_res = rs1_data | mux_op;
    end
    4'b0010: begin // ADD
      alu_res = rs1_data + mux_op;
    end
    4'b0110: begin // SUBTRACT
      alu_res = rs1_data - mux_op;
    end
    default: begin
      // Default case, nothing to do
    end
  endcase

  // Set zero flag if alu_res is zero
  zero = (alu_res == 32'b0);
end

endmodule
