// Code your design here
module mod10_counter(clk,rst,count);
  input clk,rst;
  parameter N=10;
  output reg[3:0]count;
  
  always@(posedge clk,posedge rst)
    begin
      if(rst)
        count<=4'b0000;
      else if(count <= N)
        count<=count+1;
      else
        count<=4'bxxxx;
        
    end
endmodule
