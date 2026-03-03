// Code your design here
// SR to D Flipflop conversion
// SR is available and D is Required so D is input and availables are outputs

module SR_FF(input clk,rst,s,r, output reg q);
  
  always@(posedge clk) begin
    if(rst)
      q<=0;
    else
      case({s,r})
        2'b00:q<=q;
        2'b01:q<=1'b0;
        2'b10:q<=1'b1;
        default:q<=1'bx;
      endcase
  end
endmodule

module sr_dff(input clk,rst,d,output q);
  wire s, r,qn;
  assign s=d;
  assign r=~d;
  SR_FF u1(clk,rst,s,r,qn);
  assign q=qn;
endmodule
