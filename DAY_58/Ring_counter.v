module D_ff(clk,rst,Din,q);
  input clk,rst,Din;
  output reg q;
  parameter N=0;
  
  always@(posedge clk,posedge rst)
  begin
    if(rst)
      q <=N;
    else
      q<=Din;
  end
endmodule

module Ring_counter(clk,rst,q);
  input clk,rst;
  wire [3:0]Din;
  output [3:0]q;
  
  assign Din = {q[2:0], q[3]}; 
  
  
  D_ff #(1'b1) u1(clk,rst,Din[0],q[0]);
  D_ff #(1'b0) u2(clk,rst,Din[1],q[1]);
  D_ff #(1'b0) u3(clk,rst,Din[2],q[2]);
  D_ff #(1'b0) u4(clk,rst,Din[3],q[3]);
  
 
  
endmodule
