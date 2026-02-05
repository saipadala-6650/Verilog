module adder_4bit (
    input  [3:0] a,
    input  [3:0] b,
  output  reg [4:0]sum   // 5 bits to capture carry-out
);

  // Function definition
  function [4:0] add4;
    input [3:0] x, y;
    begin
      add4 = x + y;   // purely combinational
    end
  endfunction

  // Function call
  always@(*) begin
    sum = add4(a, b);
  end

endmodule
