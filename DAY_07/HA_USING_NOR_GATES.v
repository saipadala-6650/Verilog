module Nor_only(a,b,s,c);
  input a,b;
  output s,c;
  wire w1,w2,w3,w4; 
  nor u1(w1,a,b);
  nor u2(w2,a);
  nor u3(w3,b);
  nor u0(c,w2,w3);
  nor u4(s,w1,c); 
endmodule
