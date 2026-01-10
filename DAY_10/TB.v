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
    end
  initial
    begin
      $monitor("a=%0b,b=%0b,o1=%0b,o2=%0b,o3=%0b,o4=%0b",a,b,o1,o2,o3,o4);
    end 
endmodule
