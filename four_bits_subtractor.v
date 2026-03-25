module four_bits_subtractor(a,b,diff,c_out);
input [3:0] a,b;		
wire c1,c2,c3; 				 // wires for carries from each full adder
wire [3:0]b_complement;	   		 // to get complement of b
output [3:0] diff;  			//difference		
output c_out;

not (b_complement[0],b[0]);
not (b_complement[1],b[1]);
not (b_complement[2],b[2]);
not (b_complement[3],b[3]);
full_adder(a[0],b_complement[0],1,diff[0],c1);     	// carry_in in the first full adder equal 1
full_adder(a[1],b_complement[1],c1,diff[1],c2);
full_adder(a[2],b_complement[2],c2,diff[2],c3);
full_adder(a[3],b_complement[3],c3,diff[3],c_out);

endmodule 