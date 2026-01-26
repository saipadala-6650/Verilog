tb
module tb();
  parameter N=4; 
  reg [N-1:0]a,b;
  reg cin;
  wire [N-1:0]sum;
  wire cout;
  cla u1(a,b,cin,sum,cout);
  initial
    begin
      #10; a=4'b1001;b=4'b1101;cin=1'b0;
    end
  initial
    begin
    $monitor("a=%0b,b=%0b,s=%0b,cout=%0b",a,b,sum,cout);
    end
endmodule
