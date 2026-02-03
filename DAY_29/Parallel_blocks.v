module tb();
  reg a ,b;
 reg  y,x,z;
  
  initial
   fork
    a=1'b0;b=1'b1;
   
      #10 y=a & b;
      #20 x = a| b;
      #10 z=a^b;
      
   join
  initial 
    $monitor($time," y=%0b,x=%0b,x=%0b",y,x,z);        //HERE WE CONSIDERED GREATEST DELAY OF THE STATEMENTS
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
endmodule
