// Code your design here
`define xor_gate(a,b) a^b
`define and_gate(a,b) a&b

module ha(a,b,s,c);
  input a,b;
  output s,c;
  assign s = `xor_gate(a,b);
  assign c = `and_gate(a,b);
endmodule

module gate (
    input  m,
    input  n,
    output out
);
    assign out = (m > n) ? `xor_gate(m,n) : `and_gate(m,n);
endmodule

`undef xor_gate
`undef and_gate
`resetall
