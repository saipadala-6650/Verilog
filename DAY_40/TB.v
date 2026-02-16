module tb();
  reg clk,rst,sin;
  wire sout;
  
  register4_bit dut(clk,rst,sin,sout);
  always #5 clk =~clk;
  initial
    begin
      clk=0;
      #10;sin=0;rst=1;
      #10;sin=1;rst=0; 
      #10;sin=1;rst=0;
      #10;sin=1;rst=0;
      #10;sin=1;rst=0;
    end
  initial begin
    $monitor($time ," clk=%0b sin=%0b rst=%0b sout=%0b",clk,sin,rst,sout);
  #80;$finish;
  end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
