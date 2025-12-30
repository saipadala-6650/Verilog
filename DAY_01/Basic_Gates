// CODE FOR ALL LOGIC GATES:


module logical_gates(a,b,y1,y2,y3,y4,y5,y6,y7);
  input a,b;
  output y1,y2,y3,y4,y5,y6,y7;
  // and gate primitive:
  and al(y1,a,b);
  or ol(y2,a,b);
  not nl(y3,a);
  nand m1(y4,a,b);
  nor n1(y5,a,b);
  xor x1(y6,a,b);
  xnor x2(y7,a,b);
  endmodule

//TB:

module tb;
  reg a,b;
  wire y1,y2,y3,y4,y5,y6,y7;
  logical_gates u1(a,b,y1,y2,y3,y4,y5,y6,y7);
  initial 
    begin 
      #5 a=0;b=0;
       #5 a=0;b=1;
       #5 a=1;b=0;
       #5 a=1;b=1;
      
    end
  initial
    begin
      $monitor("and output:time = %0t,a=%0b,b=%0b,And=%0b,or=%b,not=%b,nand=%b,nor=%b,xor=%b,xnor=%b",$time ,a,b,y1,y2,y3,y4,y5,y6,y7);
      
    end
  
  initial 
    begin
       $dumpfile("wavesforms.vcd");
      $dumpvars(0,tb);
    end
  
endmodule


//OUTPUT:
 

# KERNEL: and output:time = 0,a=x,b=x,And=x,or=x,not=x,nand=x,nor=x,xor=x,xnor=x
# KERNEL: and output:time = 5,a=0,b=0,And=0,or=0,not=1,nand=1,nor=1,xor=0,xnor=1
# KERNEL: and output:time = 10,a=0,b=1,And=0,or=1,not=1,nand=1,nor=0,xor=1,xnor=0
# KERNEL: and output:time = 15,a=1,b=0,And=0,or=1,not=0,nand=1,nor=0,xor=1,xnor=0
# KERNEL: and output:time = 20,a=1,b=1,And=1,or=1,not=0,nand=0,nor=0,xor=0,xnor=1 
