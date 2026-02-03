module tb();
  reg a ,b;
 reg  y,x,z;
  
  initial
     begin
    a=1'b0;b=1'b1;               // HERE IN SEQUENTIAL BLOCKS THE TIME DELAY IS ADDED SEQUENTIALLY FOR NEXT STATEMENT DELAY ...
   
      #10 y=a & b;
      #20 x = a| b;
      #10 z=a^b;
      
    end
  initial 
    $monitor($time," y=%0b,x=%0b,x=%0b",y,x,z);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
endmodule
