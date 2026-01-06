module Nand_only(a,b,s,c);
  input a,b;
  output s,c;
  wire w1,w2,w3,w4; 
  nand u1(w1,a,b);
  nand u2(w2,a,w1);
  nand u3(w3,b,w1);
  nand u4(s,w2,w3);
  nand u5(c,w1);
endmodule
