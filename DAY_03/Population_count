
module tb;
  integer i;
  integer cnt;
  reg [15:0] data;

  initial begin
    data = 16'hABCD;
    cnt = 0;

    for (i = 0; i < 16; i = i + 1) begin
      if (data[i])
        cnt = cnt + 1;
    end

    $display("data = %h, count = %0d", data, cnt);
  end
endmodule



output:


data = abcd, count = 10
