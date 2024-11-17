module alu_control(
    input logic [2:0]func3,
    input logic [6:0]func7,
    input logic [1:0]alu_op,
    output logic [3:0]alu_src1);
    always_comb
    case(alu_op)
    2'b10: //Rtype
    if(func3[2:0]==0)
    begin
        if(func7[30])
        alu_src1=0110; //sub
        else
        alu_src1=0010; //add
    end
    else if(func3[2:0]==3'b111)
        alu_src1=0000; //AND
    else
        alu_src1=0001;  //OR
    2'b00: //load store
    alu_src1=0010;
    2'b01: //branch
    alu_src1=0110;
    default:
    alu_src1=0000;
    endcase    
endmodule
