  `timescale 1ns/1ps

module tb_binary_counter;

  reg clk;
  reg rst;
  wire [3:0] q;

  // Instantiate DUT
  binary_counter dut (
    .clk(clk),
    .rst(rst),
    .q(q)
  );

  // Clock generation (10ns period)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus block
  initial begin
    rst = 1;      // Apply reset
    #12;          // Hold reset for some time
    rst = 0;      // Release reset

    #200;         // Run for multiple cycles
    $finish;
  end

  // Monitor values
  initial begin
    $monitor("Time=%0t | rst=%b | q=%b", $time, rst, q);
  end

endmodule
