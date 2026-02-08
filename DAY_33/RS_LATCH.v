module Latch_rs(input r,s,ctrl,output reg q);
  always@(*)
    begin
      if(ctrl)
        begin
          case({r,s})
            2'b00:
              q<=q;
            2'b01:
              q<=1'b1;
            2'b10:
              q<=1'b0;
            2'b11:
              q<=1'bx;
          endcase
            
        end
    end
endmodule
