// GCD machine based on Eucilidian Difference Method

module GCD_EucDiff(clk, rst, a, b, GCD);

input clk, rst;
input [7:0] a, b;
output reg [7:0] GCD;

reg [7:0] a_reg, b_reg;

always @(posedge clk or posedge rst)
 begin
  if(rst)
   begin
    a_reg <= a;
    b_reg <= b;
    GCD <= 0; 
   end
  else
   begin
    if(a_reg == b_reg)
     begin
      GCD = a_reg;
     end
    else if(a_reg > b_reg)
       begin
	a_reg <= a_reg -  b_reg;
       end
      else
	begin
	 b_reg = b_reg - a_reg;
	end
     end
  end


endmodule
