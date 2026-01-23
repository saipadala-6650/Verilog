module tb();
  reg [3:0]B;
  wire [3:0]G;
  
  B_G u1(B,G);
  initial
    begin
      #1; B=4'b1001;
    end
  initial
    $monitor("BCD=%0b,GRAY=%0b",B,G);
endmodule
