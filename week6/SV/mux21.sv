module mux21(input logic [31:0] i0,i1,
       input logic select,
       output logic [31:0]y);
       
       assign y=(select)?i1:i0;
endmodule

