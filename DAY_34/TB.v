module tb();
  reg ctrl,j,k;
  wire q;
  
  jk_latch dut(ctrl,j,k,q);
  initial
  begin
    ctrl=1;j=0;k=1;#1;
     ctrl=1;j=0;k=0;#5;
     ctrl=0;j=1;k=1;#10
     ctrl=1;j=1;k=0;#10;
     ctrl=1;j=1;k=1;
    
  end
  initial
    begin
    $monitor("ctrl=%0b,j=%0b,k=%0b,out=%0b",ctrl,j,k,q);
 #50 $finish;
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
