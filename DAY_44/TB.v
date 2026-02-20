module tb();
    reg clk,rst,s_data;
  reg [1:0]mode;
  reg [3:0]p_in;
   wire [3:0]p_out;
  wire r_out,l_out;
 
  
  usr u1(clk,rst,s_data,mode,p_in,p_out,r_out,l_out);
  always #5 clk=~clk;
  initial
    begin
    clk=0;rst=1; #10rst=0;
      mode =2'b00;#10;
      mode =2'b01; s_data=1'b1;#10;
      mode =2'b01; s_data=1'b0;#10;
      mode =2'b01; s_data=1'b1;#10;
      mode =2'b01; s_data=1'b0;#10;
      mode =2'b10; s_data=1'b0;#10;
      mode =2'b10; s_data=1'b0;#10;
      mode =2'b10; s_data=1'b1;#10;
      mode =2'b10; s_data=1'b1;#10;
      mode = 2'b11; p_in=4'b1110;#10;
    end
  initial
    begin
      $monitor($time ," clk=%0b | mode=%0b | S_data=%0b | p_in=%0b | p_out=%0b",clk,mode,s_data,p_in,p_out);
      #150 $finish;
    end
endmodule
