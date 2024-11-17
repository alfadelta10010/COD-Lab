module regfile(rs1add,rs2add,rdadd,regwrite,wrdata,rs1dat,rs2dat,reset,clk);
  input logic clk;
  input logic[4:0] rs1add;
  input logic[4:0] rs2add;
  input logic[4:0] rdadd;
  input logic regwrite;
  input logic[31:0] wrdata;
  output logic[31:0] rs1dat;
  output logic[31:0] rs2dat;
  input logic reset;
  logic[31:0] registerfile [31:0];
  
  assign rs1dat = reset? 0: registerfile[rs1add];
  assign rs2dat = reset? 0: registerfile[rs2add];
  
  always_ff@(negedge clk)
    begin
      if(reset)
        registerfile[rdadd]= 32'b0;
      else
        begin
        if(regwrite)
          registerfile[rdadd]=wrdata;
        else
           registerfile[rdadd] =32'b0;
        end
    end
     

endmodule
