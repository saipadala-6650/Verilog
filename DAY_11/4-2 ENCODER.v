module encoder(D,y);
  input [3:0]D;
  output [1:0]y;
  reg [1:0]t;
  
  assign y[0]=D[1]| D[3];
  assign y[1]=D[2]|D[3];
 // assign y=(D)?t:2'bxx;
  
endmodule
