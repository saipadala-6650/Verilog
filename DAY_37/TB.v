// Code your testbench here
// or browse Examples
module tb();
  reg clk,r,s,rst,set;
  wire q;
  
  RS_FF dut(clk,r,s,rst,set,q);
  
   always #5 clk = ~clk;
  initial
    begin
      rst=1;clk=0;r=1;s=0;set=0;
     #10 rst=0;clk=1;r=0;s=0;set=1;
      #10 rst=0;clk=1;r=0;s=1;set=1;
      #10 rst=0;clk=1;r=1;s=0;set=1;
      #10 rst=1;clk=1;r=1;s=1;set=1;
      
    end
  
  initial begin 
    $monitor($time ," clk=%0b rst=%0b set=%0b r=%0b | s=%0b q=%0b",clk,rst,set,r,s,q);
      #60;$finish;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
