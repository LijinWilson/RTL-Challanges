// The output should be high for 3 rising and falling edge in the case of clock divide by 3

module clock_divide_3(clk, rst, out);

input clk, rst;
output reg out;

reg [1:0] count;

always@(posedge clk or posedge rst)
begin
if(rst)
begin
count <= 2'b00;
out <= 1'b0;
end
else
begin
count = count + 1;
if(count == 2'b10)
begin
count = 2'b00;
out = ~out;
end
end
end

endmodule
