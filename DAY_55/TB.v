// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module sr_dff_tb;

  reg clk;
  reg rst;
  reg d;
  wire q;

  // Instantiate DUT
  sr_dff uut (
      .clk(clk),
      .rst(rst),
      .d(d),
      .q(q)
  );

  // Clock generation (10ns period)
  always #5 clk = ~clk;

  initial begin
      // Initialize
      clk = 0;
      rst = 1;
      d = 0;

      // Apply reset
      #15;
      rst = 0;

      // Test sequence
      #10 d = 1;
      #20 d = 0;
      #20 d = 1;
      #20 d = 0;

      #20 $finish;
  end

  initial begin// Code your design here
// SR to D Flipflop conversion
// SR is available and D is Required so D is input and availables are outputs

module SR_FF(input clk,rst,s,r, output reg q);
  
  always@(posedge clk) begin
    if(rst)
      q<=0;
    else
      case({s,r})
        2'b00:q<=q;
        2'b01:q<=1'b0;
        2'b10:q<=1'b1;
        default:q<=1'bx;
      endcase
  end
endmodule

module sr_dff(input clk,rst,d,output q);
  wire s, r,qn;
  assign s=d;
  assign r=~d;
  SR_FF u1(clk,rst,s,r,qn);
  assign q=qn;
endmodule
    $monitor("Time=%0t | rst=%b | S=%b| R=%b | d=%b | q=%b", $time, rst,uut.s, uut.r, d, q);
  end

  initial begin
      $dumpfile("sr_dff.vcd");
      $dumpvars(0, sr_dff_tb);
  end

endmodule
