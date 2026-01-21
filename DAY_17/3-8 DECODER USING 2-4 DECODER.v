module decoder(a,b,en,out);
  input a,b,en;
  output [3:0]out;
  
  assign out[3] = en&a&b;
  assign out[2] = en&a&(~b);
  assign out[1] = en & ~a&b;
  assign out[0] = en& ~a & ~b;
endmodule

module decoder3_8(a,b,c,out);
  input a,b,c;
  output reg [7:0]out;
  wire  w1,w2;
  assign w1 = ~c;                // the third input act as an enable pin
 
    
  decoder u1(.a(a),.b(b),.en(w1),.out(out[3:0]));
    
  decoder u2(.a(a),.b(b),.en(c),.out(out[7:4]));
  
endmodule
