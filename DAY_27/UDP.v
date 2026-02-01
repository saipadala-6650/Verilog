primitive mux_4(out,s0,s1,a,b,c,d);
input s0,s1,a,b,c,d;
output out;
table
 //s0 s1 a b c d
   0 0 0 ? ? ?:0;
   0 0 1 ? ? ?:1;  
   0 1 ? 0 ? ?:0;
   0 1 ? 1 ? ?:1;
   1 0 ? ? 0 ?:0;
   1 0 ? ? 1 ?:1;
   1 1 ? ? ? 0:0;
   1 1 ? ? ? 1:1;
endtable
endprimitive

module mux4_1(s0,s1,a,b,c,d,out);
  input s0,s1,a,b,c,d;
  output out;
  mux_4 n1(out,s0,s1,a,b,c,d);
endmodule
  
module top(s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7,out);
  input s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7;
  output out;
  wire w1,w2,w3,w4;
  mux4_1 n2(.out(w1),.s0(s0),.s1(s1),.a(i0),.b(i1),.c(i2),.d(i3));
  mux4_1 n3(.out(w2),.s0(s0),.s1(s1),.a(i4),.b(i5),.c(i6),.d(i7));
  mux4_1 n4(.out(out),.s0(1'b0),.s1(s2),.a(w1),.b(w2),.c(1'b0),.d(1'b0));
endmodule
  
