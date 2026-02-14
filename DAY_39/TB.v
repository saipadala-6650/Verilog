// Code your testbench here
// or browse Examples
//`timescale 1ns/1ps

module tb_JK_FF;

  reg clk;
  reg j, k;
  wire q;

  // Instantiate the Design Under Test (DUT)
  JK_FF dut (
    .clk(clk),
    .j(j),
    .k(k),
    .q(q)
  );

  // Clock generation (10ns period)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    $monitor("Time=%0t | clk=%b | J=%b K=%b | Q=%b", $time, clk,j, k, q);

    // Initialize
    j = 0; k = 0;

    #10;  // 00 → No change
    j = 0; k = 1;   // Reset
    #10;
    
    j = 1; k = 0;   // Set
    #10;
    
    j = 1; k = 1;   // Toggle
    #10;
    
    j = 1; k = 1;   // Toggle again
    #10;
    
    j = 0; k = 0;   // Hold
    #10;

    $finish;
  end

endmodule
