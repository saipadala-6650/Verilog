module tb();
  reg a,b;
  wire s,c;
  Hs_HA n1(a,b,s,c);
  initial 
    begin
        #5 a=0;b=0;
        #5 a=0;b=1;
        #5 a=1;b=0;
        #5 a=1;b=1;
      
    end
  initial
    begin
      $monitor("a=%0b,b=%0b,D=%0b,B=%0b",a,b,s,c);
    end
  
endmodule
