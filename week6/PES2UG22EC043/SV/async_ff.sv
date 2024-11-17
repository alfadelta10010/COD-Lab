module async_ff(input logic clk, reset, d, output logic q);

    always_ff @(posedge clk or posedge reset) begin // asynchronous since reset is in the sensitiviy list
        if(reset) q <= 1'b0;
        else q <= d;
    end
endmodule
