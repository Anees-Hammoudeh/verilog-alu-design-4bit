module full_adder(a,b,carr_in,sum,carr_out);
input a,b,carr_in;      // the inputs a, b and carry in "carr_in"
output sum,carr_out;    // the sum of inputs and the carry out
wire w1,w2,w3;       
// calling half adders
half_adder f1(a,b,w1,w2);
half_adder f2(w1,carr_in,sum,w3);
or or1(carr_out,w2,w3);
endmodule 