`timescale 1ns/1ps
module MotionEstimatorTest;
	reg clock, start;
	wire [7:0] BestDist;
	wire [3:0] motionX, motionY;
	wire [7:0] R, S1, S2;
	wire [7:0] AddressR;
	wire [9:0] AddressS1, AddressS2;
	integer i;
	wire completed; 

	ROM_R memR_u(clock, AddressR, R);

	ROM_S memS_u(clock, AddressS1, AddressS2, S1, S2);
	
	top dut (clock, start, BestDist, motionX, motionY, AddressR, AddressS1, AddressS2, R, S1, S2, completed);

	initial begin
		start =0;
		clock = 0; #5; clock = 1; #5; clock = 0; #5; clock = 1; #5;

		start = 1;
		for (i = 0; i < 4112; i = i+1) begin
			clock = 0; #5; clock = 1; #5;
		end
	end
endmodule