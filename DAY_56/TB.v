module sr_dff_tb;

  reg clk;
  reg rst;
  reg t;
  wire q;

  // Instantiate DUT
  sr_tff uut (
      .clk(clk),
      .rst(rst),
    .t(t),
      .q(q)
  );

  // Clock generation (10ns period)
  always #5 clk = ~clk;

  initial begin
      // Initialize
      clk = 0;
      rst = 1;
      t = 0;

      // Apply reset
      #15;
      rst = 0;

      // Test sequence
      #10 t= 1;
      #20 t = 0;
      #20 t = 1;
      #20 t = 0;

      #20 $finish;
  end

  initial begin
    $monitor("Time=%0t | rst=%b | S=%b| R=%b | T=%b | q=%b", $time, rst,uut.s, uut.r, t, q);
  end

  initial begin
      $dumpfile("sr_dff.vcd");
      $dumpvars(0, sr_dff_tb);
  end

endmodule
