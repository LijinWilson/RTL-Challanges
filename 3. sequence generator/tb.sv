module tb; 
  reg clk, rst;
  wire seq;
  
// Instantiating the top module
  top tb1(clk, rst, seq);
  
  initial begin
    clk = 0;
  end
  
  always #2 clk = ~clk;
  
// main Logic
  initial
    begin
      rst = 1;
      
      #5;
      
      rst = 0;
      
      #100;
      
      $finish();
    end
  
// Dump file
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0, tb);
    end
  
endmodule
