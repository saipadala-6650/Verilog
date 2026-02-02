primitive latchd(qn,d,ctrl,rst,q);
input d,ctrl,rst,q;
output  reg qn;
table
//d c r q qn
  ? ? 1 ?:0;
  ? 0 0 0:0;
  ? 0 0 1:1;
  0 1 0 ?:0;
  1 1 0 ?:1;
endtable
endprimitive 


module d_latch(qn,d,ctrl,rst,q);
  input d,ctrl,rst,q;
  output  reg qn;
  latchd u1(qn,d,ctrl,rst,q);
endmodule
