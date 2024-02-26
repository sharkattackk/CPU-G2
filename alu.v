module alu(
			input [1:0] AND, DIV, MUL, ADD, SUB, OR, NEG, NOT, SHR, SHRA, SHL, ROR, ROL,
			input clk,
			input wire [31:0] A,B,Y,
			output [63:0] C,
			output carry
);

wire[63:0] multi_res;
wire[31:0] ror_res, rol_res;
wire[31:0] and_out,sum_out,sub_out,or_out,not_out,neg_out,xor_out,shr_out,shl_out;
wire[2:0] carry_out; 
reg [31:0] RLo, RHi;
assign C = {RHi, RLo};
initial RHi = 0;

//Make an instance of each operation
My_AND andOp(and_out,Y,B);
My_ADD addOp(sum_out,carry_out,A,B);
My_SUBTRACT subOp(sub_out,carry_out,Y,B);
My_OR orOp(or_out,A,B);
My_NOT notOp(not_out,A);
My_NEGATE negateOp(neg_out,Y);
My_XOR xorOp(xor_out,A,B);
SHR shrOp(Y,shr_out,B);
SHL shlOp(Y,shl_out,B);

Multiplicaion multi(multi_res,A,B);
rotate_right ror(ror_res,A,B);
rotate_left rol(rol_res,A,B);

always @ (posedge clk)
begin
		if (ADD)
                  RLo <= sum_out;    //Addition
		else if (SUB)
					RLo <= sub_out;    //Subtraction
		else if (MUL)
						begin
							RLo <= multi_res[31:0];     //Multiplicaion
							RHi <= multi_res[63:32];
						end
		else if (DIV)
						begin
					      RHi <= A % B;            //Mod
							RLo <= (A-RHi) / B;        //Division
						end
		else if (AND)
						RLo <= and_out;    //And
		else if (OR)
                  RLo <=  or_out;   //Or
		else if (NEG)
                  RLo <= neg_out;    //Negate
		else if (NOT)
                  RLo <= not_out;    //Not
		else if (SHL)
                  RLo <= shl_out;    //Shift Left
		else if (SHR)
                  RLo <= shr_out;    //Shift Right
		else if (ROR)
						RLo <= rol_res;         //Rotate left
		else if (ROL)
						RLo <= ror_res;         //Rotate right
		else
						RLo <= RLo;             //Default RLo remains unchanged
		end
endmodule
