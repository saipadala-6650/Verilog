module tb();
  reg [1:0]in;
  wire [2:0]out;
  integer i;
  comparator u1(in,out);
  initial
    begin
      for(i=0;i<4;i=i+1)
        begin
         #1; in=i;
        end
    end
  initial
    begin
      $monitor("in=%02b,out=%03b",in,out);
    end
endmodule
