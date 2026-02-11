module tb_t_latch;

reg T;
reg EN;
wire Q;

// DUT instantiation
t_latch dut (
    .T(T),
    .EN(EN),
    .Q(Q)
);

initial begin
    // Initial values
    T  = 0;
    EN = 0;

    // IMPORTANT: initialize latch state
    force dut.Q = 1'b0;
    #1 release dut.Q;

    #9  EN = 1; T = 0;   // hold
    #10 T = 1;           // toggle -> Q=1
    #10 T = 1;           // toggle -> Q=0
    #10 T = 0;           // hold
    #10 EN = 0;          // disable latch
    #10 T = 1;           // no effect
    #10 EN = 1;          // enable
    #10 T = 1;           // toggle

    #20 $finish;
end

initial begin
    $monitor("Time=%0t | EN=%b | T=%b | Q=%b", $time, EN, T, Q);
end

endmodule
