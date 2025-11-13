`timescale 1ns/1ps

module controlTest;
	reg clock;
	reg start; 
	wire [15:0] s1s2mux, newDist, PEready;
	wire CompStart;
	wire [3:0] VectorX, VectorY;
	wire [7:0] AddressR;
	wire [9:0] AddressS1, AddressS2;
	wire completed;
	integer i;

	control dut(clock, start,s1s2mux, newDist, CompStart, PEready, VectorX, VectorY, AddressR, AddressS1, AddressS2, completed);
	initial begin
		start = 0;
		clock = 0; #5; clock = 1; #5; clock = 0; #5; clock = 1; #5;
		start = 1;
		for (i = 0; i < 4112; i = i+1)begin
			clock = 0; #5; clock = 1; #5;
		end
	end
endmodule 