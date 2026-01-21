module tb();
  integer i;
  reg a,b,c;
  wire [7:0]out;
  
  decoder3_8 n1(a,b,c,out);
  initial
    begin
      for(i=0;i<8;i=i+1)
        begin
          #1;{a,b,c}=i;
        end
    end
  initial 
    begin
      $monitor("a=%0b,b=%0b,c=%0b,out=%08b",a,b,c,out);
    end
endmodule
