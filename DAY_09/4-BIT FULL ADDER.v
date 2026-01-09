module full_adder(a,b,cin,s,c);
  input a,b,cin;
  output s,c;
  assign s=a^b^cin;
  assign c=((a^b)&cin)+(a&b);
endmodule

module fa_4b(a,b,cin,s,c);
  input [3:0]a,b;
  input cin;
  output [3:0]s;
  output c;
  wire [3:0]w;
  
  full_adder u1(a[0],b[0],cin,s[0],w[0]);
   
  full_adder u2(a[1],b[1],w[0],s[1],w[1]);
   
  full_adder u3(a[2],b[2],w[1],s[2],w[2]);
   
  full_adder u4(a[3],b[3],w[2],s[3],c);
endmodule
  
