module sync_counter (
    input clk,
    input rst,
    output reg [3:0] q
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        q <= 4'b0000;
    else begin
        q[0] <= ~q[0];
        q[1] <= q[1] ^ q[0];
        q[2] <= q[2] ^ (q[1] & q[0]);
        q[3] <= q[3] ^ (q[2] & q[1] & q[0]);
    end
end

endmodule
