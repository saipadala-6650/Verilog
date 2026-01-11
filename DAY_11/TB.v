module tb();
  reg [3:0]D;
  wire [1:0]y;
  integer i;
  
  encoder u1(D,y);
  initial
    begin
    // D=4'b1001;
   /*    D = 4'b0001; #10;   // y = 00
    D = 4'b0010; #10;   // y = 01
    D = 4'b0100; #10;   // y = 10
    D = 4'b1000; #10;   // y = 11*/
       for (i = 0; i < 4; i = i + 1) begin
      D = 4'b0001 << i;
      #10;
       end
    end
  initial
    begin
      $monitor("D=%0b,Out=%0d",D,y);
    end
endmodule

