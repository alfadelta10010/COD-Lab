module alu(
    input logic[3:0] alu_control,
    input logic[31:0] op1, op2, pc_old,
    output logic[31:0] alu_result,
    output logic zero
    );


always_comb begin
    case(alu_control)
		5'b00000: alu_result = op1 + op2;
		5'b00001: alu_result = op1 - op2;
		5'b00010: alu_result = op1 ^ op2;
		5'b00011: alu_result = op1 | op2;
		5'b00100: alu_result = op1 & op2;
		5'b00101: alu_result = op1 << op2;
		5'b00110: alu_result = op1 >> op2;
		5'b00111: alu_result = op1 >>> op2;
		5'b01000: alu_result = ($signed(op1) < $signed(op2)) ? 1:0;
		5'b01001: alu_result = (op1 < op2) ? 1:0;
		5'b01010: zero = (op1 == op2) ? 1:0;
		5'b01011: zero = (op1 != op2) ? 1:0;
		5'b01100: zero = ($signed(op1) < $signed(op2)) ? 1:0;
		5'b01101: zero = ($signed(op1) >= $signed(op2)) ? 1:0;
		5'b01110: zero = (op1 < op2) ? 1:0;
		5'b01111: zero = (op1 >= op2) ? 1:0;
		5'b10000, 5'b10001: begin
		          alu_result = pc_old + 4;
		          zero = 1'b1;
		          end
		//5'b10001: alu_result = pc_old + 4;
		5'b10010: alu_result = op2 << 12;
		5'b10011: alu_result = pc_old + (op2 << 12);
		default: alu_result = 32'bX;
    endcase
end

endmodule
