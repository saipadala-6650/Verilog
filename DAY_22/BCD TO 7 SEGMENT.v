module seven_segment(in,out,en); // DESIGN 
  input [3:0]in;
  input en;
  output  reg [6:0]out;
  always @(*)
    begin
      if(en)
        begin
          case(in)
           
              4'b0000:begin
                out=7'b1111110; //0
              end
              4'b0001:begin
                out=7'b0110000; //1
              end
              4'b0010:begin
                out=7'b1001001; //2
              end
              4'b0011:begin
                out=7'b1111001; //3
              end
              4'b0100:begin
                out=7'b0110011; //4
              end
              4'b0101:begin
                out=7'b1011011; //5
              end
              4'b0110:begin
                out=7'b1011111;  //6
              end
              4'b0111:begin
                out=7'b1110000;  //7
              end
              4'b1000:begin
                out=7'b1111111;  //8
              end
              4'b1001:begin
                out=7'b1111011;  //9
              end
              default:begin
                out=7'bxxxxxxx;  //Off
              end
          endcase
        end
           else
             begin
      out = 7'b0000000; // display OFF
    end
       
    end
       endmodule
