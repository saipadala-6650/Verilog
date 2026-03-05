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

module sr_JKff(input clk,rst,J,K,output q);
  wire s, r,qn;
  assign s=J&~qn;
  assign r=K&qn;
  SR_FF u1(clk,rst,s,r,qn);
  assign q=qn;
endmodule
