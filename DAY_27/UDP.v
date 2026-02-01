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
