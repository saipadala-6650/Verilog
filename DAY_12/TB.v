module tb();
  reg [2:0]in;
  reg en;
  wire [7:0]out;
  integer i;
  decoder u1(in,en,out);
  initial
    begin
      en=1'b1;
      for(i=0;i<8;i=i+1)
        begin
          #1 in=i;
        end
    end
  initial
    begin
      $monitor("in=%0b,en=%0b,out=%0d",in,en,out);
    end
endmodule

