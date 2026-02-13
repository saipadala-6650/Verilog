// Code your testbench here
// or browse Examples
module tb();
  reg clk,rst,T;
  wire q;
  T_ff u1(clk,rst,T,q);
  always #5 clk = ~clk;
  initial
    begin
    #10  clk=0;rst=1;T=0;
       #10  clk=1;rst=0;T=1;
       #10  clk=1;rst=0;T=0;
       #10  clk=1;rst=0;T=1;
       #10  clk=1;rst=1;T=0;
               

    end
  initial
    begin
      $monitor($time ," clk=%0b rst=%0b T=%0b Q=%0b",clk,rst,T,q);
      #70 $finish;
    end

initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  endmodule
