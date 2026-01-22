module tb();
  reg [7:0]in;
  wire[2:0]bin;
  integer i;
  
  encoder u1(in,bin);
  initial
    begin
      #1;in=8'b00011001;
    end
  initial
    $monitor("i=%0d,in=%08b,out=%03b",i,in,bin);
endmodule
