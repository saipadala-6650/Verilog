module tb;
  initial begin
    integer result = factorial(5);
    $display("factorial(5) = %0d", result);
  end

	function automatic integer factorial(integer i);
      integer result = i;

      // This function is called within the body of this
      // function with a different argument
      if (i) begin
      	result = i * factorial(i-1);
        $display("i=%0d result=%0d", i, result);
      end else
        result = 1;

      return result;
	endfunction
endmodule
