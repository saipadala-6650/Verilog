module usr(clk,rst,s_data,mode,p_in,p_out,r_out,l_out);
  input clk,rst,s_data;
  input [1:0]mode;
  input [3:0]p_in;
  output reg [3:0]p_out;
  output r_out,l_out;
  
  always@(posedge clk,posedge rst)
    begin
      
      if(rst)
        p_out<=4'b0000;
      
      else if(mode)
        case(mode)
         
          2'b00: p_out <= p_out;
          
          2'b01: p_out <= {s_data,p_out[3:1]};//right shift
          2'b10: p_out <= {p_out[2:0],s_data};// left shift
          2'b11: p_out <= p_in;
          
          default:p_out <= 4'bz;
         
        endcase
    end
  assign r_out = p_out[0];
  assign l_out = p_out[3];
endmodule
