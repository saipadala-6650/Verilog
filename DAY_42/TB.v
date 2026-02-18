module tb();
  reg clk,rst,sel;
  reg [3:0]sin;
  wire sout;
  
  Piso dut(clk,rst,sin,sel,sout);
  always #5 clk =~clk;
  initial
    begin
      clk=0;
      #10;sin=4'b0001;rst=1;
//       #10;sin=4'b0010;rst=0; 
//       #10;sin=4'b0011;rst=0;
    #10;sel=0;sin=4'b0100;rst=0;
      #10;sel=1;sin=4'b0101;rst=0;
    end
  initial begin
    $monitor($time ," clk=%0b sel=%0b sin=%04b rst=%01b sout=%04b",clk,sel,sin,rst,sout);
  #70;$finish;
  end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
