module jk_latch(ctrl,j,k,q);
  input ctrl,j,k;
  output  reg q;
  always@(*)
   
    begin
       q=q;
      if(ctrl)
        case({j,k})
          2'b00:q<=q;
          2'b01:q<=1'b0;
          2'b10:q<=1'b1;    // use blocking also:
          2'b11:q<=~q;
       //default:q<=q;
        endcase
    end
endmodule 
