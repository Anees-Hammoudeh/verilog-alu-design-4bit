module ALU_Behavioral(a,b,OpCode,result,c_out);
input [3:0] a,b;		// two inputs to make operations on them
input [2:0] OpCode;		// the operation code to select the operation to do
output reg c_out;   			 				 // carry out from Addtion & carry out from subtraction
output reg [3:0] result;
wire [3:0] Subtraction,Addition,Bitwise_OR,Bitwise_AND;// wires to store the result from each operation
wire sub_c_out,add_c_out;  // wires to store carries from addition & subtraction
// calling pervious operations 
four_bits_subtractor (a,b,Subtraction,sub_c_out);
four_bits_adder (a,b,1'b0,Addition,add_c_out);
ors (a,b,Bitwise_OR);
ands (a,b,Bitwise_AND);

always@(*) begin
	 case(OpCode)			// cases to set the result based on OpCode entered
		3'b000:begin
		result = Subtraction;
		c_out = sub_c_out;          // set the carry out equal to carry out of Subtraction when choose it
		end
		3'b001:begin
		result = Addition;
		c_out = add_c_out;			// set the carry out equal to carry out of Addition when choose it
		end
		3'b010:begin
		result = Bitwise_OR;
		c_out = 1'b0;				// set the carry out equal 0
		end
		3'b011:begin
		result = Bitwise_AND;
		c_out = 1'b0;				// set the carry out equal 0
		end
	default:
		 result = 4'b0;
	endcase
	end
endmodule 