module mux3to1(
    input logic [1:0] sel,   
  input logic [7:0] a,  
  input logic [7:0] b,   
  input logic [7:0] c,   
  output logic [7:0] y  
);

    always_comb begin
        case (sel)
            2'b00: y=a; 
            2'b01: y=b;  
            2'b10: y=c; 
            default: y = 8'b0;
        endcase
    end

endmodule
