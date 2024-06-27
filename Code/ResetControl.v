//--------------------------------------------------------------------------------------------------
//
// Title       : ResetControl
// Design      : design0
// Author      : Mahmoud Galal
// Company     : Mahmoud Galal
//
//-------------------------------------------------------------------------------------------------
//
// File        : ResetControl.v
// Generated   : Sun Dec 17 02:27:37 2023
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
//{module {ResetControl}}
module ResetControl (resetin,in,restout);
	input resetin,in;
	
	output restout;
	
	assign restout = resetin | ~in;
	
endmodule
