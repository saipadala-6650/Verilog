module traffic_light(clk,light);
  input clk;
  output reg [2:0]light;
  reg [1:0] state;
  parameter s0=2'b00, s1=2'b01,s2=2'b10;
  parameter red =3'b100,yellow=3'b010,green = 3'b001;
  
  always@(posedge clk)
    begin
      case(state)
       
          s0:
            begin
          state<=s1;
          light<=yellow;
          
        end
        s1:
          begin
            state<=s2;
            light<=green;
            end
        s2:
          begin
            state<=s0;
            light<=red;
          end
        default:
          begin
            state<=s0;
            light<=red;
          end
      endcase
    end 
endmodule
