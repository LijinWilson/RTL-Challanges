//////////////////////// SEQUENCE GENERATOR 1110 ////////////////////////

/*
	- As the lenght L of the sequence is 4.
    - We need L <= 2**n - 1 FF's
    	- Here L is 4, so N become 3, means 3 D FF's
*/

/*
	- Here the component are one combination logic and shift register(D FF)
    - Combination logic logical expression is defined in notes - F = QA_bar + QB_bar + QC_bar.
*/

// -------- D_FF --------
module d_ff(din, clk, rst, q, q_bar);
  input din, clk, rst;
  output reg q, q_bar;
  
  always @ (posedge clk or posedge rst) begin
    if(rst) begin
      q <= 1;
      q_bar <= 0;
    end else begin
      q <= din;
      q_bar <= ~din;
    end
  end
    
endmodule
    
// -------- Combinational Logic --------
    module comb_f(a, b, c, out);
      input a, b, c;
      output out;
      
      assign out = a | b | c;
      
    endmodule
    
// -------- Main Module --------
    module top(clk, rst, seq);
      input clk, rst;
      output seq;
      
      wire out, qa, qb, qa_bar, qb_bar, qc_bar;
      
  // Instantiating D FF three time
      d_ff d1(out, clk, rst, qa, qa_bar); // D FF - 1;
      d_ff d2(qa, clk, rst, qb, qb_bar); // D FF - 2;
      d_ff d3(qb, clk, rst, seq, qc_bar); // D FF - 3;
      
      comb_f c1(qa_bar, qb_bar, qc_bar, out);
      
    endmodule
