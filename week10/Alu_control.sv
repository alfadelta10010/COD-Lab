module Alu_control (
    input logic [2:0] fun3,
    input logic fun7,
    input logic [6:0] opcode,
    input logic [1:0] Alu_op,
    output logic [4:0] Alu_operation
);

    always_comb begin
        // Default assignment to avoid latches
        Alu_operation = 5'b00000;

        case ({Alu_op, opcode})
            9'b00_0000011: begin // load
                case (fun3)
                    3'b000: Alu_operation = 5'b00000;
                    3'b001: Alu_operation = 5'b00001;
                    3'b010: Alu_operation = 5'b00010;
                    3'b100: Alu_operation = 5'b00011;
                    3'b101: Alu_operation = 5'b00100;
                    default: Alu_operation = 5'b00000;
                endcase
            end

            9'b00_0100011: begin // store
                case (fun3)
                    3'b000: Alu_operation = 5'b00101;
                    3'b001: Alu_operation = 5'b00110;
                    3'b010: Alu_operation = 5'b00111;
                    default: Alu_operation = 5'b00000;
                endcase
            end

            9'b01_1100011: begin // branch
                case (fun3)
                    3'b000: Alu_operation = 5'b00000;
                    3'b001: Alu_operation = 5'b01000;
                    3'b100: Alu_operation = 5'b01001;
                    3'b101: Alu_operation = 5'b01010;
                    3'b110: Alu_operation = 5'b01011;
                    3'b111: Alu_operation = 5'b01100;
                    default: Alu_operation = 5'b00000;
                endcase
            end

            9'b10_0110011: begin // r-type
                if (fun3 == 3'b000 && fun7 == 1'b0)
                    Alu_operation = 5'b01101;
                else if (fun3 == 3'b000 && fun7 == 1'b1)
                    Alu_operation = 5'b01110;
                else if (fun3 == 3'b100 && fun7 == 1'b0)
                    Alu_operation = 5'b01111;
                else if (fun3 == 3'b110 && fun7 == 1'b0)
                    Alu_operation = 5'b10000;
                else if (fun3 == 3'b001 && fun7 == 1'b0)
                    Alu_operation = 5'b10001;
                else if (fun3 == 3'b101 && fun7 == 1'b0)
                    Alu_operation = 5'b10011;
                else if (fun3 == 3'b101 && fun7 == 1'b1)
                    Alu_operation = 5'b10100;
                else if (fun3 == 3'b010 && fun7 == 1'b0)
                    Alu_operation = 5'b10101;
                else if (fun3 == 3'b011 && fun7 == 1'b0)
                    Alu_operation = 5'b10110;
                else
                    Alu_operation = 5'b00000;
            end

            9'b11_0010011: begin // i-type
                case (fun3)
                    3'b000: Alu_operation = 5'b10111;
                    3'b100: Alu_operation = 5'b11000;
                    3'b110: Alu_operation = 5'b11010;
                    3'b001: Alu_operation = 5'b11011;
                    3'b101: begin
                        if (fun7 == 1'b0)
                            Alu_operation = 5'b11100;
                        else
                            Alu_operation = 5'b11101;
                    end
                    3'b010: Alu_operation = 5'b11110;
                    3'b011: Alu_operation = 5'b11111;
                    default: Alu_operation = 5'b00000;
                endcase
            end

            default: begin
                Alu_operation = 5'b00000; // Default case to ensure all paths are covered
            end
        endcase
   end
	endmodule
