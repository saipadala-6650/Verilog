module D_ff(clk,rst,Din,q);
  input clk,rst,Din;
  output reg q;
  
  always@(posedge clk,posedge rst)
  begin
    if(rst)
      q <=1'b1;
    else
      q<=Din;
  end
endmodule

module Ring_counter(clk,rst,q);
  input clk,rst;
  wire [3:0]Din;
  output [3:0]q;
  
  assign Din[0]=~q[3];
  
  assign Din[1]=q[0];
  assign Din[2]=q[1];
  assign Din[3]=q[2];
  
  
  D_ff u1(clk,rst,Din[0],q[0]);
  D_ff u2(clk,rst,Din[1],q[1]);
  D_ff u3(clk,rst,Din[2],q[2]);
  D_ff u4(clk,rst,Din[3],q[3]);  
endmodule
