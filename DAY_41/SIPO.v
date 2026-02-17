module SIPO(clk,rst,sin,sout);
  input clk,rst,sin;
  output  reg [3:0]sout;
  reg [3:0]temp;
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        begin
          temp<=4'b0000;
        end
      else
        temp<= {sin,temp[3:1]};
    end
  assign sout=temp;
endmodule
