module tb();
  parameter N=8;
  reg [N-1:0]a,b;
  wire g,l,e;
  comparator u1(a,b,g,l,e);
  initial
    begin
      a=4'b00000000;b=4'b00000000;#1;
    end
  initial
    begin
      $monitor("a=%b,b=%b,out_1=%b,out_2=%b,out_3=%b",a,b,g,l,e);
    end
endmodule
