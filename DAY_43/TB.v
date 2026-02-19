// Code your testbench here
// or browse Examples
module tb();
  reg clk,rst;
  reg [3:0]in;
  wire [3:0]out;
  
  pipo dut(clk,rst,in,out);
 
  always #5 clk = ~clk;
  initial
    begin
     #10 rst=1;clk=0; in=4'b0000;
    clk=1;
     #10 rst=0; in=4'b0010;
    end
  initial
    begin
      $monitor($time ," clk=%0b rst=%0b in=%04b out=%04b ",clk,rst,in,out);
      #30$finish;
      
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
