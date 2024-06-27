//--------------------------------------------------------------------------------------------------
//
// Title       : Clock
// Design      : design0
// Author      : Mahmoud Galal
// Company     : Mahmoud Galal
//
//-------------------------------------------------------------------------------------------------
//
// File        : Clock.v
// Generated   : Sat Dec 16 21:43:36 2023
// From        : interface description file
// By          : Itf2Vhdl ver. 1.20
//
//-------------------------------------------------------------------------------------------------
//
// Description : 
//
//-------------------------------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {Clock}}
module Clock (clk);
	output reg clk;
	
	initial	
		clk=0;
	
	always
		#50 clk = ~clk;

endmodule
