module tb;
  reg [3:0]in;
  reg [1:0]sel;
  wire out;
  integer i;
  
  mux4_1 u1(in,sel,out);
  initial
    begin
      #1 in=4'b0011;
      for(i=0;i<4;i=i+1)
        begin
          #1;sel=i;
        end
    end
  initial begin
    $monitor("in=%b,sel=%b,out=%b",in,sel,out);
   #100;
  $finish;
  end
endmodule
