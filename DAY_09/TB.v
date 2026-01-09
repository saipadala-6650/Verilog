module tb();
  reg [3:0]a,b;
  reg cin;
  wire [3:0]s;
  wire c;
  integer i;
  
  fa_4b u0(a,b,cin,s,c);
  initial
      
    begin
       a=4'b1001;
       b=4'b1100;
      cin=1'b0;
     
    end
  initial
    begin
      $monitor("a=%0b,b=%0b,cin=%0b,sum=%0b,carry=%0b",a,b,cin,s,c);
      
    end
endmodule
