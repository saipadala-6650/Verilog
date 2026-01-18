module comparator(a,b,g,l,e);
  parameter N=8;
  input [N-1:0]a,b;
  output reg g,l,e;
  always @(*)
    begin
      g=a>b;
      l=a<b;
      e=a==b;
    end
endmodule
