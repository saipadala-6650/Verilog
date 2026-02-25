module tb();
  reg clk,rst;
  wire [2:0]q;
  
  asyn_counter dut(clk,rst,q);
                 
  always#5 clk = ~clk;
  initial
    begin
  #10 rst=1; clk=0; //pin=1;
      #10 rst=0;//pin=1;
      #100 $finish;
    end
                   
  always@(posedge clk)
   begin
     $display($time ," clk=%0b rst=%0b out=%03b",clk,rst,q);

                     end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule



