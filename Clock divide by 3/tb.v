module clockDividerbBy3_tb();

reg clk, rst;
wire out;

// module instantiation
clock_divide_3 clk1(clk, rst, out);

// clock generation
initial
begin
clk = 0;
rst = 1;

#10; rst = 0;

#150; $stop();
end

always #5 clk = ~clk;




endmodule
