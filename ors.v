module ors(a,b,res);
input [3:0] a,b;	// inputs a & b each of them is 4 bits
output [3:0] res;  	// the result of ORing inputs 4 bit too
or (res[0],a[0],b[0]);
or (res[1],a[1],b[1]);
or (res[2],a[2],b[2]);
or (res[3],a[3],b[3]);
endmodule 