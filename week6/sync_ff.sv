
module sync_ff(
    input logic clk,    
    input logic reset,    
    input logic d,        
    output logic q     
);
  
    always_ff @(posedge clk ) 
      begin
        if (reset)       
            q <= 0;
        else           
            q <= d;
    end

endmodule
