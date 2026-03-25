module ALU_dataFlow(a,b,selection,c_out,result);  
input [3:0] a,b;						// two inputs to make operations on them
input [2:0] selection;					// the operation code to select the operation to do
output c_out;   					  // carry out 
output [3:0] result;
wire [3:0] Subtraction,Addition,Bitwise_OR,Bitwise_AND; // wires to store the result from each operation
wire add_c_out,sub_c_out;   // wires to store carries from addition & subtraction
// calling pervious operations 
four_bits_subtractor(a,b,Subtraction,sub_c_out);
four_bits_adder(a,b,1'b0,Addition,add_c_out);
ors(a,b,Bitwise_OR);
ands(a,b,Bitwise_AND);

assign result = (selection == 3'b 000)? Subtraction:
				(selection == 3'b 001)? Addition:
				(selection == 3'b 010)? Bitwise_OR:
				(selection == 3'b 011)? Bitwise_AND:4'b0000; // set result equal zero if non of above operations is selected
 
 assign c_out = (selection == 3'b 000) ? sub_c_out :  // Carry out from Subtraction
                   (selection == 3'b 001) ? add_c_out :  // Carry out from Addition
                   1'b0;                               // c_out for other operations

endmodule
