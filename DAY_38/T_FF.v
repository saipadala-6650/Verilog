// Code your design here
module T_ff(clk,rst,T,q);
  input clk,rst,T;
  output reg q;
  
  always@(posedge clk,posedge rst)
    begin
      if(rst)
        q<=1'b0;
      else if(T)
        q<= ~q;
      else 
        q<=q;
    end
endmodule
