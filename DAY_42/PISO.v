module Piso(clk,rst,sin,sel,sout);
  input clk,rst,sel;
  input [3:0]sin;
  output sout;
  reg [3:0]temp;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        begin
          temp <=4'b0000;
        end
      else if(sel) // shift
        begin
          temp<={1'b0,temp[3:1]};
        end
      else
        temp<=sin; // load
    end
  assign sout =temp[0];
endmodule
