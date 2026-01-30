module tb();
  reg [7:0]op1,op2;
  reg[3:0]command;
  wire [15:0]out;
  integer i;
  
  alu DUT(op1,op2,out,command);
  initial
    begin
   
      
      for(i=0;i<16;i=i+1)
        begin
          #5 {command}=i;
           op1=8'd10;op2=8'd5;
        end
      #10 $finish;
    end
  initial
    begin
      $monitor($time," i=%0d,op1=%0b,op2=%0b,comm=%0b,out=%b",i,op1,op2,command,out);
     
    end
  
endmodule
