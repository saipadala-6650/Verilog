// Code your testbench here
// or browse Examples
module tb();
  reg clk,rst;
  wire [3:0]count;
   parameter N=10;
  mod10_counter dut(clk,rst,count);
  always #5 clk= ~clk;
  initial
    begin
      #10 clk=0;
      #10 rst=1;
      #10 rst=0;
      #100 $finish;
    end
  always@(posedge clk)
    begin
      $display($time ," clk=%0b rst=%0b count=%04b",clk,rst,count);
    end
  
   initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
