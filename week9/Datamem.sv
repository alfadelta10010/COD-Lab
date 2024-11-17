module mem_acc #(parameter n=32)(
  input logic[n-1:0] alures,
  input logic[n-1:0] datain,
  input bit mem_write,
  input bit mem_read,
  input logic clk,
  output logic[n-1:0] dataout);
  
  logic [n-1:0] data [0:1024];
  always@(clk)
    begin
      if(mem_read==1)
        begin
          dataout = data[alures];
        end
      else
        begin
          dataout = 32'bx;
        end
      if(mem_write==1)
        begin
          data[alures]=datain;
        end
      else
        begin
          data[alures]=32'b0;
        end
    end
endmodule


	
