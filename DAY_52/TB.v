module tb();
  reg clk,rst,t;
  
  wire [3:0]q;
  
  mod10 dut(clk,rst,t,q);
  
  always #5 clk=~clk;
  
  initial
    begin
     #10 clk=0;rst=1;
      #10 rst=0;
      
      
      #100 $finish;
    end
  always@(posedge clk) begin
    $display("clk=%0b rst=%0b q=%4b",clk,rst,q);
  end
endmodule
