// ENCODER USING CASEX METHOD
module encoder(in,bin);
  input [7:0]in;
  output reg [2:0]bin;
  always @(*)
    begin
      casex(in)
         8'b00000001:bin=3'b000;
         8'b0000001x:bin=3'b001;
         8'b000001xx:bin=3'b010;
         8'b00001xxx:bin=3'b011;
         8'b0001xxxx:bin=3'b100;
         8'b001xxxxx:bin=3'b101;
         8'b01xxxxxx:bin=3'b110;
         8'b1xxxxxxx:bin=3'b111;
        default:bin=3'bxxx;
      endcase
      end
endmodule

// USIING IF ELSE CONDITION:

module enocder(in,bin);
  input[7:0] in;
  output [2:0] bin;
  reg [2:0] bin;
  wire en;
  always@(*)
    begin 
      if(in[7])
        bin = 3'b111;
      else if(in[6])
        bin = 3'b110;
      else if(in[5])
        bin = 3'b101;
      else if(in[4])
        bin = 3'b100;
      else if(in[3])
        bin = 3'b011;
      else if(in[2])
        bin = 3'b010;
      else if(in[1])
        bin = 3'b001;
     else 
       bin = 3'b000;
    end
endmodule


