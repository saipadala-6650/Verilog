module tb();
  reg r,s,ctrl;
  wire q;
  integer i;
  Latch_rs dut(r,s,ctrl,q);
  initial
    begin
     
       #10 ctrl = 1; r = 0; s = 1;   // SET → q = 1
    #10 r = 1; s = 0;             // RESET → q = 0
    #10 r = 0; s = 0;             // HOLD → q remains 0
    #10 ctrl = 0; r = 0; s = 1;   // Disabled → q should HOLD
    #10 ctrl = 1;                 // Enabled again → SET
    #10 r = 1; s = 1;             // Invalid condition
    #10 $finish;
    end
  initial
    $monitor($time ," r=%0b,s=%0b,q=%0b",r,s,q);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
