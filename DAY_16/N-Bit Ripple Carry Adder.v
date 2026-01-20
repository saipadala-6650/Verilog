module full_adder(a,b,cin,s,cout);
  input a,b,cin;
  output s,cout;
  wire w1,w2,w3;
  xor u1(w1,a,b);
  xor u2(s,w1,cin);
  and u3(w2,a,b);
  and u4(w3,w1,cin);
  or u5(cout,w2,w3);
endmodule 

module ripple_carry(a,b,cin,s,cout);
  parameter N=16;
  input [(N-1):0]a,b;
  input cin;
  output [(N-1):0]s;
  output cout;
  wire [N:0]c;
  assign c[0]=cin;
  genvar i;
  generate
    for(i=0;i<N;i=i+1)
      begin:fa_4bit
        full_adder u6(.a(a[i]),.b(b[i]),.cin(c[i]),.s(s[i]),.cout(c[i+1]));
         end
        endgenerate
        assign cout=c[N];
     
    endmodule
