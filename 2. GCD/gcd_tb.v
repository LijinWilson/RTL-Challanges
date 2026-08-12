module gcd_tb();
reg [7:0] a, b;
wire [7:0] gcd_out;

// instantiation of design module
GCD_top gcd1(a, b, gcd_out);

// Test Cases
initial
begin
// first case
a = 35;
b = 15;

#10;
$display("A = %0d | B = %0d | GCD_Out = %0d", a, b, gcd_out);

// Second case
a = 100;
b = 40;

#10;
$display("A = %0d | B = %0d | GCD_Out = %0d", a, b, gcd_out);


// Third Case
a = 27;
b = 9;

#10;
$display("A = %0d | B = %0d | GCD_Out = %0d", a, b, gcd_out);


$finish();

end

endmodule
