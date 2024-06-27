//--------------------------------------------------------------------------------------------------
//
// Title       : VendingMachine_15
// Design      : design0
// Author      : Mahmoud Galal
//
//-------------------------------------------------------------------------------------------------
//
// File        : VendingMachine_15.v
// Generated   : Sat Dec 16 23:44:47 2023
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
//{module {VendingMachine_15}}
module VendingMachine_15 (clock, reset, price_1, price_2, out, change_1, change_2);
	input clock;
	input reset;
	input price_1, price_2;
	
	output reg out;
	output reg change_1, change_2;
	
	parameter A = 2'b00;
	parameter B = 2'b01;
	parameter C = 2'b10;
	
	reg [1:0] currentState;
	reg [1:0] NextState;
	
	always @(posedge clock) 
		begin
			if (reset)
				begin
					currentState <= A;
					NextState <= A;
					out <= 1'b0;
					change_1 <= 1'b0;
					change_2 <= 1'b0;
				end
			else 
				begin
					currentState <= NextState;
					case(currentState)
						A: case({price_2,price_1})
								2'b00:
									begin
										currentState <= A;
										out <= 1'b0;
										change_1 <= 1'b0;
										change_2 <= 1'b0;
									end
								2'b01:
									begin
										currentState <= B;
										out <= 1'b0;
										change_1 <= 1'b0;
										change_2 <= 1'b0;
									end
								2'b10:
									begin
										currentState <= C;
										out <= 1'b0;
										change_1 <= 1'b0;
										change_2 <= 1'b0;
									end
								2'b11:
									begin
										currentState <= A;
										out <= 1'b1;
										change_1 <= 1'b1;
										change_2 <= 1'b0;
									end
							endcase
						B: case({price_2,price_1})
								2'b00:
									begin
										currentState <= A;
										out <= 1'b0;
										change_1 <= 1'b1;
										change_2 <= 1'b0;
									end
								2'b01:
									begin
										currentState <= C;
										out <= 1'b0;
										change_1 <= 1'b0;
										change_2 <= 1'b0;
									end
								2'b10:
									begin
										currentState <= A;
										out <= 1'b1;
										change_1 <= 1'b0;
										change_2 <= 1'b0;
									end
								2'b11:
									begin
										currentState <= A;
										out <= 1'b1;
										change_1 <= 1'b0;
										change_2 <= 1'b1;
									end
							endcase
						C: case({price_2,price_1})
								2'b00:
									begin
										currentState <= A;
										out <= 1'b0;
										change_1 <= 1'b0;
										change_2 <= 1'b1;
									end
								2'b01:
									begin
										currentState <= A;
										out <= 1'b1;
										change_1 <= 1'b0;
										change_2 <= 1'b0;
									end
								2'b10:
									begin
										currentState <= A;
										out <= 1'b1;
										change_1 <= 1'b1;
										change_2 <= 1'b0;
									end
								2'b11:
									begin
										currentState <= A;
										out <= 1'b1;
										change_1 <= 1'b1;
										change_2 <= 1'b1;
									end
							endcase
					endcase
				end
		end
endmodule
