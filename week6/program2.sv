module mux_3to1 (
    input logic [2:0] sel,  
    input logic d0,        
    input logic d1,        
    input logic d2,        
    output logic y         
);

    always_comb begin
        case (sel)
            3'b001: y = d0;  
            3'b010: y = d1;  
            3'b100: y = d2;  
            default: y = 0;  
        endcase
    end

endmodule
