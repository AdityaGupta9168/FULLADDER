module test_bench_fullAdder;
  reg x_1, y_1, cin_1;
  wire cout_1, sum_1;

  fullAdder fadder1(.x(x_1), .y(y_1), .cin(cin_1), .cout(cout_1), .sum(sum_1));

  //dumping signal for output waveform(only for EDA Playground)
  initial begin
    $dumpfile("drop.vcd");
    $dumpvars(1);
end
  
  initial begin  
  x_1=0;y_1=0;cin_1=0;
  #10
  x_1=0;y_1=0;cin_1=1;
  #10
  x_1=0;y_1=1;cin_1=0;
  #10
  x_1=0;y_1=1;cin_1=1;
  #10
  x_1=1;y_1=0;cin_1=0;
  #10
  x_1=1;y_1=0;cin_1=1;
  #10
  x_1=1;y_1=1;cin_1=0;
  #10
  x_1=1;y_1=1;cin_1=1;
    
    $finish();
  end
endmodule
