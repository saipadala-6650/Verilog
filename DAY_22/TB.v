module tb_seven_segment;

  reg  [3:0] in;
  reg        en;
  wire [6:0] out;

  
  seven_segment dut (
    .in(in),
    .out(out),
    .en(en)
  );

  initial 
     begin
 
    en = 1;
    in = 4'b0000;
    #10;
      end
initial
begin
    $monitor("Time=%0t | en=%b | in=%b | out=%b", $time, en, in, out);
  end

endmodule
