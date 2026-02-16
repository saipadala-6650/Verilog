module register4_bit(clk,rst,sin,sout);
  input clk,rst,sin;
  output sout;
  reg [3:0]temp;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        temp<=4'b0000;
      else
        temp<={sin,temp[3:1]}; // RIGHT SHIFT  ----> LEFT SHIFT--> temp<={temp[3:1],sin};
      
    end
  assign sout=temp[0]; // AT LSB U CAN TAKE OUTPUT  sout=temp[3]<---LEFT SHIFT
endmodule

