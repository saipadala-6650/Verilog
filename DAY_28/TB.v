module tb();
  reg d,ctrl,rst,q;
  wire qn;
  
  d_latch n1(qn,d,ctrl,rst,q);
  initial
    begin
      #10; rst=1'b1;ctrl=1'b?;d=1'b?;q=1'b?;
      $display("time=%0t,rst=%0b,ctrl=%0b,d=%0b,q=%0b,qn=%0b",$time,rst,ctrl,d,q,qn);
       rst=1'b0;ctrl=1'b0;d=1'b?;q=1'b0;#10;
      $display("time=%0t,rst=%0b,ctrl=%0b,d=%0b,q=%0b,qn=%0b",$time,rst,ctrl,d,q,qn);
        rst=1'b0;ctrl=1'b0;d=1'b?;q=1'b1;#10;
      $display("time=%0t,rst=%0b,ctrl=%0b,d=%0b,q=%0b,qn=%0b",$time,rst,ctrl,d,q,qn);
        rst=1'b0;ctrl=1'b1;d=1'b0;q=1'b?;#10;
      $display("time=%0t,rst=%0b,ctrl=%0b,d=%0b,q=%0b,qn=%0b",$time,rst,ctrl,d,q,qn);
        rst=1'b0;ctrl=1'b1;d=1'b1;q=1'b?;#10;
      $display("time=%0t,rst=%0b,ctrl=%0b,d=%0b,q=%0b,qn=%0b",$time,rst,ctrl,d,q,qn);
      #100;$finish;
    end
endmodule
