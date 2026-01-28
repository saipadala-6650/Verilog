module adder(a,b,cin,s,c);
  parameter n=8;
  input[n-1:0]a,b;
  input cin;
  output [n-1:0]s;
  output c;
  wire [n:0]carry;
  assign carry[0]=cin;
  assign c=carry[n];
    //wire w1,w2,w3;
  genvar i;
  generate 
    for(i=0;i<n;i=i+1)
      begin:fa_loop
     wire w1,w2,w3;
        xor g1(w1,a[i],b[i]);
        xor g2(s[i],w1,carry[i]);
        and g3(w2,a[i],b[i]);
        and g4(w3,w1,carry[i]);
        or g5(carry[i+1],w2,w3);
      end
        endgenerate
        endmodule
