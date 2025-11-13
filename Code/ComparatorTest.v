`timescale 1ns/1ps

module ComparatorTest;
	reg clock;
	reg CompStart;
	reg [8*16-1:0] PEout;
	reg [15:0] PEready;
	reg [3:0] vectorX, vectorY;

	wire [7:0] bestDist;
	wire [3:0] motionX, motionY;

	Comparator dut(clock, CompStart, PEout, PEready, vectorX, vectorY, bestDist, motionX, motionY);
	initial begin
		CompStart = 0; vectorX = 0; vectorY =0; PEready = 16'b0000000000000001;
		PEout = 128'h00FFFFFFFFFFFFFFFFFFFFFF050203FE;
		clock = 0; #5; clock = 1; #5;

		CompStart = 1; vectorX = 3; vectorY = 2; 
		clock = 0; #5; clock = 1; #5; 

		PEready = 16'b0000000000000010; vectorX = 10; vectorY = 8;
		clock = 0; #5; clock = 1; #5; 

		PEready = 16'b0000000000000100; vectorX = 3; vectorY = 5;
		clock = 0; #5; clock = 1; #5;

		PEready = 16'b0000000000001000; vectorX = 1; vectorY = 1; 
		clock = 0; #5; clock = 1; #5; 
	end
endmodule