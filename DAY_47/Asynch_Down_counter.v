module asyn_counter(clk,rst,pin,q);
  
  input clk,rst,pin;
  output reg[2:0]q;
  always@(posedge clk,posedge rst)
    begin
      if(rst)
        q<=3'b000;
      else 
        q[0] <= ~q[0];
    end
  always@(posedge q[0],posedge rst)
    begin
      if(rst)
        q<=3'b000;
      else
        q[1]<= ~q[1];
      
    end
  always@(posedge q[1],posedge rst)
    begin
      if(rst)
        q<=3'b000;
      else
        q[2] <= ~q[2];
    end
  
endmodule
