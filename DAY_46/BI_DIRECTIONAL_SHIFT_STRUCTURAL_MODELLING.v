module D_ff(clk,rst,d,q);
  input clk,rst,d;
  output reg q;
  always@(posedge clk, posedge rst)
    begin
      if(rst)
        q<=1'b0;
      else
        q<=d;
    end
endmodule 

module Mux(s0,sr_in,sl_in,out);
  input s0,sr_in,sl_in;
  output out;
  assign out=(s0)?sr_in:sl_in;
endmodule


module Bi_directional(clk,rst,mode,sr_in,sl_in,q);
  
  input clk,rst,mode,sr_in,sl_in;
  output q;
  wire [3:0]w;
  wire [3:0]temp;
  
  Mux n1(mode,sr_in,sl_in,w[0]);
  D_ff u1(clk,rst,w[0],temp[0]);
  
  Mux n2(mode,sr_in,sl_in,w[1]);
  D_ff u2(clk,rst,w[1],temp[1]);
  
  Mux n3(mode,sr_in,sl_in,w[2]);
  D_ff u3(clk,rst,w[2],temp[2]);
  
  Mux n4(mode,sr_in,sl_in,w[3]);
  D_ff u4(clk,rst,w[3],temp[3]);
  
  assign q=(mode)?temp[3]:temp[0];
  
endmodule
