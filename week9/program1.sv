module datamem #(parameter n=32)(alures,datain,write,read,clk,dataout);
  input logic[n-1:0] alures;
  input logic[n-1:0] datain;
  input bit write;
  input bit read;
  input logic clk;
  output logic[n-1:0] dataout;
  logic [n-1:0] data [0:1024];
  always@(clk)
    begin
      if(read==1)
        begin
          dataout = data[alures];
        end
      else
        begin
          dataout = 32'bx;
        end
      if(write==1)
        begin
          data[alures]=datain;
        end
      else
        begin
          data[alures]=32'b0;
        end
    end
endmodule
