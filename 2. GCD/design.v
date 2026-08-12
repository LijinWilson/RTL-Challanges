module GCD_top(a, b, gcd_out);

input [7:0] a, b;
output reg [7:0] gcd_out;

 // Here automatic keyword is used as the function i used as an recursive 
function automatic [7:0] findGCD;
  input [7:0] a; // similar to function function_name(a, b); || this is the way of passing argument in verilog
input [7:0] b;
if(a == 0)
begin
findGCD = b; // similar to return b in python;
end
else
begin
findGCD = findGCD(b%a, a);
end
endfunction

// Calling the function
always @(*)
begin
gcd_out = findGCD(a, b);
end

endmodule
