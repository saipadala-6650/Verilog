module Bidirectional(clk,rst,mode,sr_in,sl_in,q);
  input clk,rst,mode;
  input sr_in,sl_in;
  output  q;
  reg [3:0]temp;
  
  
  always@(posedge clk,posedge rst)
    begin
      if(rst)
        temp<=4'b0000;
        
      else if(mode)
       
        temp<={sr_in,temp[3:1]};
      
        
      else
        temp<={temp[2:0],sl_in};

    end
  assign q=(mode)?temp[0]:temp[3];
endmodule


