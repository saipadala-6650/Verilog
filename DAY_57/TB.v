module sr_ff_tb;

  reg clk;
  reg rst;
  reg K,J;
  wire q;

  // Instantiate DUT
  sr_JKff uut (
      .clk(clk),
      .rst(rst),
    .J(J),.K(K),
      .q(q)
  );

  // Clock generation (10ns period)
  always #5 clk = ~clk;

  initial begin
      // Initialize
      clk = 0;
      rst = 1;
      J = 0;K=0;

      // Apply reset
      #15;
      rst = 0;

      // Test sequence
      #10 J=0;K=0;
      #20 J=0;K=1;
      #20 J=1;K=0;
      #20 J=1;K=1;

      #20 $finish;
  end

  initial begin
    $monitor("Time=%0t | rst=%b | S=%b| R=%b | J=%b | K=%b | q=%b", $time, rst,uut.s, uut.r, J,K, q);
  end

  initial begin
    $dumpfile("dump.vcd");
      $dumpvars();
  end
