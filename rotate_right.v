module rotate_right(
output [31:0] R,		//output reg
input [31:0] A, B
);

	wire [4:0] M;
	assign M = B % 32;		//store modulus result in M
	//Depending on the value M rotate right the 32 bit input A by B bits, i.e. bit 30 to 0 concatenated with bit 31 for first case
	
	assign R = (M == 31) ? {B[30:0], B[31:31]} :

												(M == 30) ? {A[29:0], A[31:30]} :
												(M == 29) ? {A[28:0], A[31:29]} :
												(M == 28) ? {A[27:0], A[31:28]} :
												(M == 27) ? {A[26:0], A[31:27]} :
												(M == 26) ? {A[25:0], A[31:26]} :
												(M == 25) ? {A[24:0], A[31:25]} :
												(M == 24) ? {A[23:0], A[31:24]} :
												(M == 23) ? {A[22:0], A[31:23]} :
												(M == 22) ? {A[21:0], A[31:22]} :
												(M == 21) ? {A[20:0], A[31:21]} :
												(M == 20) ? {A[19:0], A[31:20]} :
												(M == 19) ? {A[18:0], A[31:19]} :
												(M == 18) ? {A[17:0], A[31:18]} :
												(M == 17) ? {A[16:0], A[31:17]} :
												(M == 16) ? {A[15:0], A[31:16]} :
												(M == 15) ? {A[14:0], A[31:15]} :
												(M == 14) ? {A[13:0], A[31:14]} :
												(M == 13) ? {A[12:0], A[31:13]} :
												(M == 12) ? {A[11:0], A[31:12]} :
												(M == 11) ? {A[10:0], A[31:11]} :
												(M == 10) ? {A[9:0], A[31:10]} :
												(M == 9) ? {A[8:0], A[31:9]} :
												(M == 8) ? {A[7:0], A[31:8]} :
												(M == 7) ? {A[6:0], A[31:7]} :
												(M == 6) ? {A[5:0], A[31:6]} :
												(M == 5) ? {A[4:0], A[31:5]} :
												(M == 4) ? {A[3:0], A[31:4]} :
												(M == 3) ? {A[2:0], A[31:3]} :
												(M == 2) ? {A[1:0], A[31:2]} :
												(M == 1) ? {A[0:0], A[31:1]} :
												 A[31:0];
endmodule
