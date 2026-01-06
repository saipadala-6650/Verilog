
module tb();
  reg a,b;
  wire s,c;
  Nand_only n1(a,b,s,c);
  initial
    begin 
    #5 a=0;b=0;
     #5 a=0;b=1;
       #5 a=1;b=0;
       #5 a=1;b=1;
    
    end
  initial
    begin
      $monitor("T=%0t,a=%0b,b=%0b,s=%0b,c=%0b",$time,a,b,s,c);
    end
endmodule
