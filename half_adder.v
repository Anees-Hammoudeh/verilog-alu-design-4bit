module half_adder(a,b,sum,carr);
input a,b;       // the inputs and each of them is one bit	
output sum,carr;   // the sum of two inputs and the carry
xor(sum,a,b);
and(carr,a,b);

endmodule 