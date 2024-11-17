module controller (f3,f7,opcode,reg_wr,mem_rd,mem_wr,wb_ctrl,alu_op,alu_s1,alu_s2,branch_ctrl,mem_ctrl);
input logic [6:0] opcode;
input logic [2:0] f3;
input logic [6:0] f7;
output logic reg_wr,mem_rd,alu_s1,alu_s2,mem_wr;
output logic[1:0] wb_ctrl;
output logic [3:0] alu_op;
output logic [2:0] branch_ctrl;
output logic [2:0] mem_ctrl;

always_comb 
begin
reg_wr=1'b0;
mem_rd=1'b0;
mem_wr=1'b0;
wb_ctrl=2'b00;
alu_s1=1'b0;
alu_s2=1'b0;
branch_ctrl=3'b011;
mem_ctrl=3'b000;
alu_op=4'b1111;
case(opcode)
    7'b0110011: //R type
    begin
        reg_wr=1'b1;
        mem_rd=1'b0;
        mem_wr=1'b0;
        wb_ctrl=2'b01;
        alu_s1=1'b0;
        alu_s2=1'b0;
        case(f3)
        3'b000 : 
            begin
                if (f7==7'b0)
                    alu_op=4'b0000; //add
                else
                    alu_op=4'b1000; //sub
            end
        3'b101:
            begin
                if (f7==7'b0)
                    alu_op=4'b0101; //srl
                else
                    alu_op=4'b1101; //sra
            end
        3'b001 :
            begin
                if (f7==7'b0)
                    alu_op=4'b0101;
            end
        3'b110:
        begin
            if (f7==7'b0)
                alu_op=4'b0110;
        end
         3'b111:
            begin
                if(f7==7'b0)
                    alu_op=4'b0111;
            end                   
         3'b010:
            begin
                if(f7==7'b0)
                    alu_op=4'b0010;
            end    
         3'b011:
            begin
                if(f7==7'b0)
                    alu_op=4'b0011;
            end
         default:
            alu_op=4'bxxxx;
        endcase  
    end
    7'b0010011: //IR type
    begin
        reg_wr= 1'b1;
        mem_rd=1'b0;
        mem_wr=1'b0;
        wb_ctrl=2'b01;
        alu_s1=1'b0;
        alu_s2=1'b1;
        case(f3)
            3'b101:
            begin
                if(f7==7'b0)
                    alu_op=4'b0101;
                else
                    alu_op=4'b1101;
            end  
            3'b000,3'b001,3'b010,3'b011,3'b100,3'b110,3'b111:
                alu_op = {1'b0, f3[2:0]};
            default:
                alu_op=4'b1111;
        endcase
    end
    7'b0000011: //IL type
    begin
        reg_wr=1'b1;
        mem_rd=1'b1;
        mem_wr=1'b0;
        wb_ctrl=2'b00;
        alu_s1=1'b0;
        alu_s2=1'b1;
        case(f3)
            3'b000: mem_ctrl = 3'b000; // LB
			3'b001: mem_ctrl = 3'b001; // LH
			3'b010: mem_ctrl = 3'b010; // LW
			3'b100: mem_ctrl = 3'b011; // LBU
			3'b101: mem_ctrl = 3'b100; // LHU
			default: mem_ctrl = 3'b1;  
        endcase
    end
    7'b0100011://s type
    begin
        reg_wr=1'b0;
        mem_rd=1'b0;
        mem_wr=1'b1;
        wb_ctrl=2'b00;
        alu_s1=1'b0;
        alu_s2=1'b1;
        
        case(f3)
            3'b000: mem_ctrl = 3'b101; // SB
			3'b001: mem_ctrl = 3'b110; // SH
			3'b010: mem_ctrl = 3'b111; // SW
			default: mem_ctrl = 3'bx; 
        endcase
    end
    
    7'b1100011: //branch type
    begin
        reg_wr=1'b0;
        mem_rd=1'b0;
        mem_wr=1'b0;
        wb_ctrl=2'b00;
        alu_s1=1'b0;
        alu_s2=1'b0;
        branch_ctrl=f3;
       
    end
    
    7'b1101111: //jal
    begin
        reg_wr=1'b1;
        mem_rd=1'b0;
        mem_wr=1'b0;
        wb_ctrl=2'b10;
        alu_s1=1'b1;
        alu_s2=1'b1;
        branch_ctrl=3'b000;
        mem_ctrl=3'b000;
        alu_op=4'b0000;
    end
    
    7'b1100111: //jalr
    begin
        reg_wr=1'b1;
        mem_rd=1'b0;
        mem_wr=1'b1;
        wb_ctrl=2'b10;
        alu_s1=1'b1;
        alu_s2=1'b0;
        branch_ctrl=3'b000;
        alu_op=4'b0000;
        mem_ctrl=3'b000;
        
    end
    
    default: alu_op=4'b0000;
endcase
end

endmodule