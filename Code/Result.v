//--------------------------------------------------------------------------------------------------
//
// Title       : Result
// Design      : design0
// Author      : Mahmoud Galal
// Company     : Mahmoud Galal
//
//-------------------------------------------------------------------------------------------------
//
// File        : Result.v
// Generated   : Sun Dec 17 01:01:50 2023
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
//{module {Result}}
module Result (z_10,z_15,z_20,c1_10,c1_15,c1_20,c2_10,c2_15,c2_20,z,c1,c2);
	input z_10,z_15,z_20,c1_10,c1_15,c1_20,c2_10,c2_15,c2_20;
	
	output z,c1,c2;
	
	assign z= z_10 | z_15 | z_20;
	assign c1= c1_10 | c1_15 | c1_20;
	assign c2= c2_10 | c2_15 | c2_20;
	
endmodule
