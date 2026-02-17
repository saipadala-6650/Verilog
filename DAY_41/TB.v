module tb();
  reg clk,rst,sin;
  wire [3:0]sout;
  
  SIPO dut(clk,rst,sin,sout);
  always #5 clk =~clk;
  initial
    begin
      clk=0;
      #10;sin=1;rst=1;
      #10;sin=0;rst=0; 
      #10;sin=0;rst=0;
      #10;sin=1;rst=0;
      #10;sin=0;rst=0;
    end
  initial begin
    $monitor($time ," clk=%0b sin=%0b rst=%0b sout=%04b",clk,sin,rst,sout);
  #70;$finish;
  end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
