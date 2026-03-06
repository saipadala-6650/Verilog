module tb();
  reg clk,rst;
  //reg [3:0]Din;
  wire [3:0]q;
  
  
  Ring_counter dut(.clk(clk),.rst(rst),.q(q));
  always #5 clk= ~clk;
  initial
    begin
      #10 clk=0; rst=1;
      
      #10 rst=0; 
      #90 $finish;
    end
  always@(posedge clk)
    begin
    $display($time ," clk=%0b rst=%0b  out=%04b ",clk,rst,q);
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule
