module tb();
  reg clk,rst,mode,sr_in,sl_in;
  wire q;
  
  Bi_directional dut(.clk(clk),.rst(rst),.mode(mode),.sr_in(sr_in),.sl_in(sl_in),.q(q));
  
  
  always #5 clk= ~clk;
  
  initial
    begin
      clk=0;
      #10 rst=1;
      #10 rst=0;mode=1;sr_in=1;sl_in=0;
      #10 rst=0;mode=1;sr_in=0;sl_in=0;
      #10 rst=0;mode=1;sr_in=1;sl_in=0;
      #10 rst=0;mode=1;sr_in=0;sl_in=0;
      
      #10 rst=1;
      #10 rst=0;mode=0;sr_in=0;sl_in=1;
      #10 rst=0;mode=0;sr_in=0;sl_in=0;
      #10 rst=0;mode=0;sr_in=0;sl_in=0;
      #10 rst=0;mode=0;sr_in=0;sl_in=1;
     #150 $finish;
    end
   always@(posedge clk)
    begin
      $display($time ," clk=%0b rst=%0b sr_in=%0b sl_in=%0b mode=%0b q=%0b",clk,rst,sr_in,sl_in,mode,q);
    end
endmodule
