module tb();
  reg x,y;
  wire k,l;
  Half_adder n1(.a(x),.b(y),.s(k),.c(l));
  initial 
    begin
      #5 x=0;y=0;
      #5 x=0;y=1;
      #5 x=1;y=0;
      #5 x=1;y=1;
    end
  initial
    begin
      $monitor("time=%0t,x=%0b,y=%0b,k=%0b,l=%0b",$time,x,y,k,l);
    end
endmodule
