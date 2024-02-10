module alu(
			input [3:0] select,
			input clk,
			input signed [31:0] A,
			input signed [31:0] B,
			output [63:0] Z,
			output carry
);


wire[31:0] ror_res, rol_res;
reg [31:0] RLo, RHi;
assign Z = {RHi, RLo};
initial RHi = 0;

rotate_right ror(ror_res,A,B);
rotate_left rol(rol_res,A,B);


always @ (posedge clk)
begin
		case(select)
				4'b0001:
                            //Addition
				4'b0010:
						    //Subtraction
				4'b0011:
						begin
							RLo <=                  //Multiplicaion
							RHi <= 
						end
				4'b0101:
						begin
					        RLo <=             //Mod
							RHi <=            //Division
						end
				4'b0110:
                            //And
				4'b0111:
                            //Or
				4'b1000:
                            //2s complement
				4'b1010:
                            //Not
				4'b1100:
                            //Shift Left
				4'b1101:
                            //Shift Right
				4'b1110:
						RLo <= rol_res;         //Rotate left
				4'b1111:
						RLo <= ror_res;         //Rotate right
				default:
						RLo <= RLo;             //Default RLo remains unchanged
			endcase
		end
endmodule