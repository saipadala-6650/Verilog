module tb();
  parameter N=16;
  reg [(N-1):0]a,b;
  reg cin;
  wire [(N-1):0]s;
  wire cout;
  
  ripple_carry n1(a,b,cin,s,cout);
  initial
    begin
       a=16'hffff;b=16'hffff; cin = 1'b0;#1;
      
    end
  initial
    begin
      $monitor("s=%0b | c=%0b",s,cout);
    end
endmodule
