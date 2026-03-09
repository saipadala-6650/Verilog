module binary_counter(clk,rst,q);
  //parameter N=4;
  input clk,rst;
 // reg [3:0]Din;
  output reg [3:0]q;
  
  always@(posedge clk ,posedge rst)
    begin
      if(rst)
        q[0]<=1'b0;
      else
        q[0]<=~q[0];
     
    end
  always@(posedge q[0],posedge rst)
    begin
      if(rst)
        q[1]<=1'b0;
      else
      q[1]<=~q[1];
    end
  always@(posedge q[1],posedge rst ) begin
    if(rst)
      q[2]<=1'b0;
    else
      q[2]<=~q[2];
  end
  always@(posedge q[2],posedge rst) begin
    if(rst)
      q[3]<=1'b0;
    else
      q[3]<=~q[3];
  end
endmodule
