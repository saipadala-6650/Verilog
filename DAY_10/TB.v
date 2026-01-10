module tb();
  reg a,b;
  wire o1,o2,o3,o4;
  decoder u1(a,b,o1,o2,o3,o4);
  initial
    begin
      #5 a=0;b=0;
      #5 a=0;b=1;
      #5 a=1;b=0;
      #5 a=1;b=1;
