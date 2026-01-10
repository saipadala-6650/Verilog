module decoder(a,b,o1,o2,o3,o4);
  input a,b;
  output o1,o2,o3,o4;
  and (o1,~a,~b);
  and (o2,~a,b);
  and (o3,a,~b);
  and (o4,a,b);
endmodule
  
