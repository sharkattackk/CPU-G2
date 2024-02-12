	module Datapath(	 input R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in,
							 input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
							 input PCin, PCout, IRin, Yin, Zin, MARin, HIin, HIout, LOin, LOout, IncPC, Zhighout, zlowout,
//							 input MDRin, MDRout, MARin, 
							 input [3:0] ALUselect,
							 input [31:0] MDatain,
				
//							 output R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15,
							 output [31:0] ZRegout
							
							);
							
//							 wire[31:0] bus;
							 wire clock, clear;
							 wire [7:0] IRout;
			
			
							wire [31:0]busInR0, busInR1, busInR2, busInR3, busInR4, busInR5, busInR6, busInR7, busInR8, busInR9, busInR10, busInR11,
										  busInR12, busInR13, busInR14, busInR15, busInHI, busInLO, Zhighin, zlowinPin, MDRin, In_Portin, Cin;


							register R0(busInR0, bus, R0in, clear, clock);
							register R1(busInR1, bus, R1in, clear, clock);
							register R2(busInR2, bus, R2in, clear, clock);
							register R3(busInR3, bus, R3in, clear, clock);
							register R4(busInR4, bus, R4in, clear, clock);
							register R5(busInR5, bus, R5in, clear, clock);
							register R6(busInR6, bus, R6in, clear, clock);
							register R7(busInR7, bus, R7in, clear, clock);
							register R8(busInR8, bus, R8in, clear, clock);
							register R9(busInR9, bus, R9in, clear, clock);
							register R10(busInR10, bus, R10in, clear, clock);
							register R11(busInR11, bus, R11in, clear, clock);
							register R12(busInR12, bus, R12in, clear, clock);
							register R13(busInR13, bus, R13in, clear, clock);
							register R14(busInR14, bus, R14in, clear, clock);
							register R15(busInR15, bus, R15in, clear, clock);
							
							register IR(IRout, bus, IRin, clock, clear);
							pc_reg PC(busInPC, bus, PCin, IncPC, clock, clear);
		
							gen_reg MAR(busInMAR, bus, MARin, clock, clear);
							mdr_reg MDR(busInMDR, MDatain, bus, MDRin, MDRread, clock, clear);
							
							gen_reg HI(busInHI, bus, HIin, clock, clear);
							gen_reg LO(busInLO, bus, LOin, clock, clear);
							gen_reg Y(YData, bus, Yin, clock, clear);
							z_reg_32 Z(busInZ, ZReg, Zin, ZLowout, ZHighout, clock, clear);
							

							adder add(A, BusMuxOut, zregin);
							register RZ(clear, clock, Rzin, zregin, BusMuxInRz);
							
							alu alu();

							Bus bus(	R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
										HIout, LOout, Zhighout, zlowout, Pout, MDRout, In_Portout, Cout, 
										R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in, 
										HIin, LOin, Zhighin, zlowin,
										Pin, MDRin, In_Portin, Cin);

endmodule