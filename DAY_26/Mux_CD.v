`celldefine 
module mux(a,s,out);
  input [1:0]a;
  input s;
  output out;
  assign out=a[s];
endmodule
`endcelldefine
module mux4_1(in,sel,out);
  input [3:0]in;
  input [1:0]sel;
  output out;
  wire[1:0] w;
  mux u1(.a(in[1:0]),.s(sel[0]),.out(w[0]));
  mux u2(.a(in[3:2]),.s(sel[0]),.out(w[1]));
  mux u3(.a(w[1:0]),.s(sel[1]),.out(out));
endmodule
  
