module tb();
  reg a,b,c;
  wire sum,c_out;
  integer i;
  
  Top_module n1(a,b,c,sum,c_out);
  initial
    begin
      for(i=0;i<8;i=i+1)
        begin
         #1; {a,b,c}=i;
          
        end
    end
  initial
    begin
      $monitor("a=%0b,b=%0b,c=%0b,sum=%0b,carry=%0b",a,b,c,sum,c_out);
    end
endmodule
