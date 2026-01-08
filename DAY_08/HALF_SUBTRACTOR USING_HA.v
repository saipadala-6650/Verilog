module Hs_HA(a,b,s,c);
  input a,b;
  output s,c;
  wire w1,w2;
 
  
 not u0(w1,a);
  not u5(w2,w1);
  
  xor u1(s,w2,b);
  and u2(c,w1,b);
endmodule
