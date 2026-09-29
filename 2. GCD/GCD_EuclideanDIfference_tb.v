// Code your testbench here
// or browse Examples
module GCDEucDiff_tb();

reg clk, rst, load;
reg [7:0] a, b;
wire [7:0] GCD;

// Module Instantiation
  GCD_EucDiff tb1(clk, rst, load, a, b, GCD);

// Clock and reset Generation
initial
 begin
  clk <= 0;
 end

always #3 clk = ~clk;0

// Assigning Values
initial
 begin
  // Case - 1;
   a = 35; 
   b = 15;

   rst <= 1;

   #10; 
   rst = 0;
   load = 1;
   
   #6;
   load = 0;

   #30; 
   $display("A = %0d | B = %0d | GCD = %0d", a, b, GCD);
   #10; 

   $finish();

 end

endmodule
