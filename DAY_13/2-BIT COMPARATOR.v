module comparator(in,out);
  input [1:0]in;
  output reg [2:0]out;
  always@(*)
    begin
      case(in)
       
          2'b00:begin
            out[0]=1'b0;
            out[1]=1'b1;
            out[2]=1'b0;
          end
           2'b01:begin
             out[0]=1'b1;
             out[1]=1'b0;
            out[2]=1'b0;
          end
           2'b10:begin
            out[0]=1'b0;
             out[1]=1'b0;
             out[2]=1'b1;
          end
           2'b11:begin
            out[0]=1'b0;
            out[1]=1'b1;
            out[2]=1'b0;
          end
       
      endcase
      end
endmodule
