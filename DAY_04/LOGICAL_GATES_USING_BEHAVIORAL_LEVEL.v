// LOGIC_GATES WITH BEHAVIORAL LEVEL:



module Logic_gates(a, b, out);
  input a, b;
  output reg [6:0] out;

  always @(*) begin
    if (a == 1'b0 && b == 1'b0) 
      begin
      out[0] = a & b;
      out[1] = a | b;
      out[2] = ~a;
      out[3] = ~(a & b);
      out[4] = ~(a | b);
      out[5] = a ^ b;
      out[6] = ~(a ^ b);
    end
    else if (a == 1'b0 && b == 1'b1) begin
      out[0] = a & b;
      out[1] = a | b;
      out[2] = ~a;
      out[3] = ~(a & b);
      out[4] = ~(a | b);
      out[5] = a ^ b;
      out[6] = ~(a ^ b);
    end
    else if (a == 1'b1 && b == 1'b0) begin
      out[0] = a & b;
      out[1] = a | b;
      out[2] = ~a;
      out[3] = ~(a & b);
      out[4] = ~(a | b);
      out[5] = a ^ b;
      out[6] = ~(a ^ b);
    end
    else if (a == 1'b1 && b == 1'b1) begin
      out[0] = a & b;
      out[1] = a | b;
      out[2] = ~a;
      out[3] = ~(a & b);
      out[4] = ~(a | b);
      out[5] = a ^ b;
      out[6] = ~(a ^ b);
    end
    else begin
      out = 7'bxxxxxxx;
    end
  end

endmodule



// TEST BENCH:

// Code your testbench here
// or browse Examples
module tb();
  reg a,b;
  wire [6:0]out;
  Logic_gates u1(a,b,out);
  initial
    begin
      #5 a=0;b=0;
      #5 a=0;b=1;
      #5 a=1;b=0;
      #5 a=1;b=1;
     end
  initial
    begin
      $monitor("a=%0b,b=%0b,and=%0b,or=%0b,not=%0b,nand=%0b,nor=%0b,xor=%0b,xnor=%0b",a,b,out[0],out[1],out[2],out[3],out[4],out[5],out[6]);
      
    end
endmodule



OUTPUT:


KERNEL: a=x,b=x,and=x,or=x,not=x,nand=x,nor=x,xor=x,xnor=x
# KERNEL: a=0,b=0,and=0,or=0,not=1,nand=1,nor=1,xor=0,xnor=1
# KERNEL: a=0,b=1,and=0,or=1,not=1,nand=1,nor=0,xor=1,xnor=0
# KERNEL: a=1,b=0,and=0,or=1,not=0,nand=1,nor=0,xor=1,xnor=0
# KERNEL: a=1,b=1,and=1,or=1,not=0,nand=0,nor=0,xor=0,xnor=1
