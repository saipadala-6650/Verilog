
module fa(a, b, cin, s, c);
  input a, b, cin;
  output s, c;

  assign s = a ^ b ^ cin;
  assign c = (a & b) | (cin & (a ^ b));
endmodule


module top(a, b, m, s, c);
  input  [3:0] a, b;
  input        m=1'b0;        // mode: 0=add, 1=sub
  output [3:0] s;
  output       c;

  wire [3:0] out;
  wire [3:0] w;

  assign out = a ^ {4{m}};   
  fa u0(out[0], b[0], m,     s[0], w[0]);
  fa u1(out[1], b[1], w[0],  s[1], w[1]);
  fa u2(out[2], b[2], w[1],  s[2], w[2]);
  fa u3(out[3], b[3], w[2],  s[3], w[3]);

  assign c = w[3];
   
endmodule
