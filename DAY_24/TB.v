// Code your testbench here
// or browse Examples
`define xor_gate(a,b) a^b
`define and_gate(a,b) a&b
module tb();
  reg m,n;
  wire out;
  
  gate n1(m,n,out);
  initial
    begin
       #1;m=1;n=0;
       #1;m=0;n=1;
       #1;m=1;n=0;
       #1;m=1;n=1;
      
    end
  initial
    begin
      $monitor("m=%b,n=%b,out=%b",m,n,out);
    end
endmodule
