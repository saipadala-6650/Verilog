module tb();
  reg [3:0]a,b;
  //reg cin=0;
  reg m=1'b0;
  wire [3:0]s;
  wire c;
 // wire [3:0]out;
  
  top n1(a,b,m,s,c);
  initial
    begin
      #1;a=4'b1100;
      b=4'b1111;
    //  m=1'b0;
    end
  initial
    begin
      $monitor("a=%04b,b=%04b,s=%04b,c=%0b",a,b,s,c);
    end
endmodule
