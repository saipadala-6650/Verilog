// Code your design here
module RS_FF (
    input  clk,
    input  r,
    input  s,
    input  rst,
    input  set,
    output reg q
);

  always @(posedge clk or posedge rst or posedge set) begin
    if (rst)
        q <= 1'b0;          
    else if (set)
        q <= 1'b1;          
    else begin
      case ({s,r})
            2'b00: q <= q;     
            2'b01: q <= 1'b0;   
            2'b10: q <= 1'b1;   
            //2'b11: q <= ~q;     
        endcase
    end
end

endmodule
