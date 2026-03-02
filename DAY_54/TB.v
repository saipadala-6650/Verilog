module tb();
  reg clk;
  wire [2:0]light;
  
  traffic_light dut(clk,light);
  
  always #5 clk = ~clk;
  
  initial 
    begin
      clk=0;
      #10 ;
      #200 $finish;
    end
  initial
    begin
      $monitor($time ," clk=%0b light=%03b",clk,light);
    end
endmodule
