module datamem(wradd,wrdata,memwr,memrd,dataout,clk);
input logic[11:0] wradd;
input logic[31:0] wrdata;
input logic memwr,memrd,clk;
output logic[31:0] dataout;

logic [7:0] datafile [0 :2**11-1];

always@(memrd)
begin
    if(memrd==1)
    begin
        dataout[7:0] = datafile[wradd];
        dataout[15:8] = datafile[wradd+1];
        dataout[23:16] = datafile[wradd+2];
        dataout[31:24] = datafile[wradd+3];
    end
    else
        dataout=32'b0;        
end
always@(posedge clk)
begin
    if(memwr==1)
    begin
        if(wrdata[31:24] != 8'bX)
				datafile[wradd+3] <= wrdata[31:24];
			else
				datafile[wradd+3] <= 8'b0;
			if(wrdata[23:16] != 8'bX)
				datafile[wradd+2] <= wrdata[23:16];
			else
				datafile[wradd+3] <= 8'b0;
			if (wrdata[15:8] != 8'bX)
				datafile[wradd+1] <= wrdata[15:8];
			else
				datafile[wradd+3] <= 8'b0;
			if (wrdata[7:0] != 8'bX)
				datafile[wradd] <= wrdata[7:0];
			else 
				datafile[wradd] <= 8'b0;
    end
    else
    begin
        datafile[wradd] = 8'b0;
        datafile[wradd+1] = 8'b0;
        datafile[wradd+2] = 8'b0;
        datafile[wradd+3] = 8'b0;
    end
end

endmodule
