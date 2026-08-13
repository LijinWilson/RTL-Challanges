// GCD machine based on Eucilidian Difference Method

module GCD_EucDiff(clk, rst, load, a, b, GCD);

input clk, rst, load;
input [7:0] a, b;
output reg [7:0] GCD;

reg [7:0] a_reg, b_reg;

always @(posedge clk or posedge rst)
// Inside the clocked always, we must use non blocking statements
 begin
// To prevent from zero input(which cause the machine to run forever)
if(a_reg == 0)
    GCD <= b_reg;
else if(b_reg == 0)
    GCD <= a_reg;

  if(rst)
   begin
    a_reg <= 0;
    b_reg <= 0;
    GCD <= 0; 
   end
  else
   begin
    if(load) 
     begin
      a_reg <= a;
      b_reg <= b;
     end
    else 
     begin
      if(a_reg == b_reg)
       begin
        GCD <= a_reg;
       end
      else if(a_reg > b_reg)
       begin
	a_reg <= a_reg -  b_reg;
       end
      else
	begin
	 b_reg <= b_reg - a_reg;
	end
end
     end
  end

endmodule
