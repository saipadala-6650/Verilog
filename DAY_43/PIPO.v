// Code your design here
module pipo(clk,rst,in,out);
  input clk,rst;
  input [3:0]in;
  output reg [3:0]out;
  
  always@(posedge clk,posedge rst)
    begin
      if(rst)
        out <=4'b0000;
      else
        out <= in;
    end
endmodule 
