	module Datapath(	 input R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in,
							 input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
							 input PCin, PCout, IRin, Yin, Zin, MARin, HIin, HIout, LOin, LOout, IncPC, Zhighout, zlowout,
//							 input MDRin, MDRout, MARin, 
							 input [3:0] ALUselect,
							 input [31:0] MDatain,
				
//							 input R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15,
							 output [31:0] ZRegout
							
							);
							
//							 wire[31:0] bus;
							 wire clock, clear;
							 wire [7:0] IRout;
			
			
							wire [31:0]busInR0, busInR1, busInR2, busInR3, busInR4, busInR5, busInR6, busInR7, busInR8, busInR9, busInR10, busInR11,
										  busInR12, busInR13, busInR14, busInR15, busInHI, busInLO, Zhighin, zlowinPin, MDRin, In_Portin, Cin;


							Gen_Reg R0(busInR0, bus, R0in, clear, clock);
							Gen_Reg R1(busInR1, bus, R1in, clear, clock);
							Gen_Reg R2(busInR2, bus, R2in, clear, clock);
							Gen_Reg R3(busInR3, bus, R3in, clear, clock);
							Gen_Reg R4(busInR4, bus, R4in, clear, clock);
							Gen_Reg R5(busInR5, bus, R5in, clear, clock);
							Gen_Reg R6(busInR6, bus, R6in, clear, clock);
							Gen_Reg R7(busInR7, bus, R7in, clear, clock);
							Gen_Reg R8(busInR8, bus, R8in, clear, clock);
							Gen_Reg R9(busInR9, bus, R9in, clear, clock);
							Gen_Reg R10(busInR10, bus, R10in, clear, clock);
							Gen_Reg R11(busInR11, bus, R11in, clear, clock);
							Gen_Reg R12(busInR12, bus, R12in, clear, clock);
							Gen_Reg R13(busInR13, bus, R13in, clear, clock);
							Gen_Reg R14(busInR14, bus, R14in, clear, clock);
							Gen_Reg R15(busInR15, bus, R15in, clear, clock);
							
							Gen_Reg IR(IRout, bus, IRin, clock, clear);
							PC_Reg PC(busInPC, bus, PCin, IncPC, clock, clear);
		
							Gen_Reg MAR(busInMAR, bus, MARin, clock, clear);
							MDR_reg MDR(busInMDR, MDatain, bus, MDRin, MDRread, clock, clear);
							
							Gen_Reg HI(busInHI, bus, HIin, clock, clear);
							Gen_Reg LO(busInLO, bus, LOin, clock, clear);
							Gen_Reg Y(YData, bus, Yin, clock, clear);
							Z_Reg Z(busInZ, ZReg, Zin, ZLowout, ZHighout, clock, clear);
							

							RCAdder add(A, BusMuxOut, zregin);
							Gen_Reg RZ(clear, clock, Rzin, zregin, BusMuxInRz);
							
							alu alu();

							bus bus(	R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
										HIout, LOout, Zhighout, zlowout, Pout, MDRout, In_Portout, Cout, 
										R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in, 
										HIin, LOin, Zhighin, zlowin,
										Pin, MDRin, In_Portin, Cin);

endmodule