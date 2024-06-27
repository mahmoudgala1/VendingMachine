//--------------------------------------------------------------------------------------------------
//
// Title       : PriorityEncoder
// Design      : design0
// Author      : Mahmoud Galal
// Company     : Mahmoud Galal
//
//-------------------------------------------------------------------------------------------------
//
// File        : PriorityEncoder.v
// Generated   : Sat Dec 16 21:17:17 2023
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
//{module {PriorityEncoder}}
module PriorityEncoder (in1, in2, in3, in4, in5, in6, in7, in8, enable, out1, out2, out3);  
	
	input in1, in2, in3, in4, in5, in6, in7, in8;
	input enable;
	output reg out1, out2, out3;	
	
	always @ (enable, in1, in2, in3, in4, in5, in6, in7, in8)
		begin
			if(enable == 1)
			begin
				if(in8 == 1)      begin out3=1'b1; out2=1'b1; out1=1'b1; end
				else if(in7 == 1) begin out3=1'b1; out2=1'b1; out1=1'b0; end
	        	else if(in6 == 1) begin out3=1'b1; out2=1'b0; out1=1'b1; end
	        	else if(in5 == 1) begin out3=1'b1; out2=1'b0; out1=1'b0; end
	        	else if(in4 == 1) begin out3=1'b0; out2=1'b1; out1=1'b1; end
	        	else if(in3 == 1) begin out3=1'b0; out2=1'b1; out1=1'b0; end
	        	else if(in2 == 1) begin out3=1'b0; out2=1'b0; out1=1'b1; end
				else if(in1 == 1) begin out3=1'b0; out2=1'b0; out1=1'b0; end
				else 	          begin out3=1'bz; out2=1'bz; out1=1'bz; end
			end	
			else  begin out3=1'bz; out2=1'bz; out1=1'bz; end
		end	
		
endmodule
