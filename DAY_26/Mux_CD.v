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
  mux (.a(in[1:0]),.s(sel[0]),.out(w[0]));
  mux (.a(in[3:2]),.s(sel[0]),.out(w[1]));
  mux (.a(w[1:0]),.s(sel[1]),.out(out));
endmodule
  
