//LOGICAL OPERATORS:
// or browse Examples
module Logical();
  reg [3:0] a,b,c;
  reg x,y,z;
  initial 
    begin
      a=5;b=4'b1111;c='bx;
      x=a&&b;
      y=a||c;
      z=!a;
    end
  initial 
    begin
      $monitor("x=%b,y=%b,z=%b",x,y,z);
    end
endmodule

x=1,y=1,z=0


module bitwise();
  reg [3:0] a,b,c;
  reg [3:0] x,y,z,w;
  initial 
    begin
      a=5;b=4'b1111;c='bx;
      x=a & b;
      y=a | c;
      w=~a;
      z=a^b;
    end
  initial 
    begin
      $monitor("x=%b,y=%b,z=%b,w=%b",x,y,z,w);
    end
endmodule



 x=0101,y=x1x1,z=1010,w=1010



// Code your testbench here
// or browse Examples
module shift();
  reg [3:0] a,b,c;
  reg [3:0]x,y,z,w;
  integer r;
  initial
    begin
      a=5;b=4'b1011;c=-7;r=-9;
      x= a>>1;
      y=b<<2;
      z=c>>>1;
      w=c<<<1;  
    end
  initial
    $monitor("x=%b,y=%b,z=%b,w=%b,r=%0b",x,y,z,w,r);
endmodule


x=0010,y=1100,z=0100,w=0010,r=11111111111111111111111111110111




module reduction();
  reg [5:0]a;
  reg [5:0]out;
  initial 
    begin
      a=6'b11011;
      out[0]=&a;
      out[1]=|a;
      out[2]=^a;
      out [3]= ^~a;
      out[4]=~&a;
      out[5]= ~|a;    
    end
  initial
    begin
      $monitor("out=%0b ",out);
    end
endmodule
 
                           out=11010 



//RELATIONAL _OPERATORS:
// Code your testbench here
// or browse Examples
module rela();
  reg [3:0] a,b,c;
  reg x,y,z;
  initial
    begin
      a=10;b=4'b1001;c='bx;
      x=a>b;
      y=a<c;
      z=a<b;
      
    end
  initial
    $monitor("x=%0b,y=%0b,z=%0b",x,y,z);
endmodule
 x=1,y=x,z=0

// CONCATA


// Code your testbench here
// or browse Examples
module concat();
  reg [3:0] a,b,c;
  reg [7:0] x,y,z;
  initial
    begin
      a=10;b=4'b1001;c='bx;
      x={a[2:0],b};
      y={2{b}};
    end
  initial
    $monitor("x=%0b,y=%0b",x,y);
endmodule



           x=101001,y=10011001

// EQUALITY OPERATORS:*/

// Code your testbench here
// or browse Examples
module equal();
  reg [3:0]a,b,c;
  reg x,y,z;
  initial
    begin
      a=5;b=4'b110x;c=4'bxxxx;
      x = (c==b);
      y = (a!==b);
      z =(a===c);
      
    end
  initial
    $monitor("x=%b,y=%b,z=%b",x,y,z);
endmodule

//CONDITIONAL_OPERATOR


// Code your testbench here
// or browse Examples
module cond_op();
 reg [3:0]a,b,c;
  reg [3:0]x,y,z;
  initial
    begin
      a=0;b=4'b1100;c=4'd9;
     x=&a ? b:c;
      y=~(a) ? (a&b):(b|c);
    end
  initial
    $monitor("x=%b,y=%b",x,y);
endmodule


: x=1001,y=0000



//ARITHMETIC OPERATOR:


// Code your testbench here
// or browse Examples
module arth();
  reg [2:0]a,b,c;
  reg [5:0]x,y,z,w;
  initial 
    begin
      a=15;b=3;c=7;
      
      x=a+b;
      y=a-b;
      z=a*b;
      w=a/b;
    end
  initial
    $monitor("x=%b,y=%b,z=%b,w=%b",x,y,z,w);
  initial
    $monitor("x=%d,y=%d,z=%d,w=%d",x,y,z,w);
endmodule



//OUTPUT:
: x=001010,y=000100,z=010101,w=000010
# KERNEL: x=10,y= 4,z=21,w= 2
