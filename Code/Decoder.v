//--------------------------------------------------------------------------------------------------
//
// Title       : Decoder
// Design      : design0
// Author      : Mahmoud Galal
// Company     : Mahmoud Galal
//
//-------------------------------------------------------------------------------------------------
//
// File        : Decoder.v
// Generated   : Sat Dec 16 21:29:12 2023
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
//{module {Decoder}}
module Decoder (in1, in2, in3, enable, out1, out2, out3, out4, out5, out6, out7, out8);
	input in1, in2, in3;
	input enable;
	
	output reg out1, out2, out3, out4, out5, out6, out7, out8;
	
	always @ (enable or in1, in2, in3)	
		begin
			if(enable == 1)
				begin
					if(in3==1'b0 && in2==1'b0 && in1==1'b0) begin 
					{out8,out7,out6,out5,out4,out3,out2,out1} = 8'b00000001; end
					else if(in3==1'b0 && in2==1'b0 && in1==1'b1) begin 
					{out8,out7,out6,out5,out4,out3,out2,out1} = 8'b00000010; end
					else if(in3==1'b0 && in2==1'b1 && in1==1'b0) begin 
					{out8,out7,out6,out5,out4,out3,out2,out1} = 8'b00000100; end
					else if(in3==1'b0 && in2==1'b1 && in1==1'b1) begin 
					{out8,out7,out6,out5,out4,out3,out2,out1} = 8'b00001000; end
					else if(in3==1'b1 && in2==1'b0 && in1==1'b0) begin 
					{out8,out7,out6,out5,out4,out3,out2,out1} = 8'b00010000; end
					else if(in3==1'b1 && in2==1'b0 && in1==1'b1) begin 
					{out8,out7,out6,out5,out4,out3,out2,out1} = 8'b00100000; end
					else if(in3==1'b1 && in2==1'b1 && in1==1'b0) begin 
					{out8,out7,out6,out5,out4,out3,out2,out1} = 8'b01000000; end
					else if(in3==1'b1 && in2==1'b1 && in1==1'b1) begin 
					{out8,out7,out6,out5,out4,out3,out2,out1} = 8'b10000000; end
				end
			else {out8,out7,out6,out5,out4,out3,out2,out1}=8'bzzzzzzzz;
		end
	

endmodule
