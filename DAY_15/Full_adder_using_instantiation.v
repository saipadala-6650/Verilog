module Ha1(a,b,sum,c_out);
  input a,b;
  output sum,c_out;
  assign sum=a^b;
  assign c_out=a&b;
endmodule

module or1(a,b,y);
  input a,b;
  output y;
  assign y=a|b;
endmodule

module Top_module(a,b,c,sum,c_out);
  input a,b,c;
  output sum,c_out;
  wire w1,w2,w3,w4;
  Ha1 u1(.a(a),.b(b),.sum(w1),.c_out(w2));
  Ha1 u2(.a(w1),.b(c),.sum(sum),.c_out(w3));
  or1 u3(.a(w3),.b(w2),.y(c_out));
endmodule
