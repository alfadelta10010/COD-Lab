module alu_control(
    input logic [2:0]funct3,
    input logic [6:0]funct7,
    input logic [1:0]alu_op,
    output logic [3:0]alu_control
    );
    always_comb
    case(alu_op)
        2'b10: begin
            if(funct3[2:0]==0)
            begin
                if(funct7[5])
                    alu_control=0110; //sub
                else
                    alu_control=0010; //add
            end
            else if(funct3[2:0]==3'b111)
                alu_control=0000; //AND
            else
                alu_control=0001;  //OR
        end
        2'b00 : alu_control=0010;
        2'b01 : alu_control=0110;
        default : alu_control=0000;
    endcase    
endmodule