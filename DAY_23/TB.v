module tb();
  parameter n=8;
  reg [n-1:0]a,b;
  reg cin;
  wire [n-1:0]s;
  wire c;
  adder u1(a,b,cin,s,c);
  initial
    begin
      #1;
      a=8'b10011001;
      b=8'b10011111;
      cin=1'b0;
    end
  initial
    begin
      $monitor("a=%01b,b=%01b,s=%0b,c=%0b",a,b,s,c);
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,tb);
    end
endmodule
