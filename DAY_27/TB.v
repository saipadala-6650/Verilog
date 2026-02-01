module tb();
  reg s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7;
  wire out;
  integer i;
  top u1(s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7,out);
  initial
    begin
      for(i=0; i<(1 << 12);i=i+1)
        begin
          {s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7}=i; #1;
        end
    end
  initial
    $monitor("i=%0d,s0=%0b,s1=%0b,s2=%0b,out=%0b",i,s0,s1,s2,out);
endmodule
    

