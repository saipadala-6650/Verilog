module tb();
  reg clk,d,rst,set;
  wire q;
  
  D_FF u1(clk,d,rst,set,q);
  
  //clk=0;
  
  always #5 clk = ~clk;
  initial
    begin
      d=0;clk=0;
      #10; set =1;
      #10; set=0;d=0;
      #10;rst=1;
      #10; rst=0;d=1;
      #10;d=0;
      #5;rst=1;d=1;
      
    end
  initial
    begin
      $monitor($time ," clk=%0b rst=%0b set=%0b d=%0b q=%0b",clk,rst,set,d,q);
      #60;$finish;
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
