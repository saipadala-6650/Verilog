module t_latch (
    input  wire T,
    input  wire EN,
    output reg  Q
);

always @ (T or EN)
begin
    if (EN) begin
        if (T)
            Q = ~Q;   // toggle
        // else hold automatically
    end
end

endmodule
