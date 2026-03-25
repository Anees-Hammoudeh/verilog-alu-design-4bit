module four_bits_adder(a,b,c_in,sum,c_out);
input [3:0] a,b;                            // the two 4 bit numbers to find their sum
input c_in;									// carry in in the first full adder usually equal zero
wire c1,c2,c3;								// wires to represent each carry from each full adder 
output [3:0] sum;							// the result of sum
output c_out;								// final carry out of the sum

full_adder(a[0],b[0],c_in,sum[0],c1);  		// calling full adders which built before
full_adder(a[1],b[1],c1,sum[1],c2);
full_adder(a[2],b[2],c2,sum[2],c3);
full_adder(a[3],b[3],c3,sum[3],c_out);

endmodule 