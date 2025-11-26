interface ME_Interface #(parameter IN_WIDTH = 26,
	paramter OUT_WIDTH = 45
	)(
	input clk
	);

	logic start;
	logic [7:0] BestDist;
	logic [3:0] motionX, motionY;
	logic completed;
	logic [7:0] R, S1, S2;
	logic [7:0] AddressR;
	logic [9:0] AddressS1, AddressS2;

	logic [15:0] S1S2mux, newDist, PEready;
	logic CompStart;
	logic [3:0] VectorX, VectorY;
	logic [127:0] Accumulate;

	clocking cb_clk @(posedge clk);
		default input #3ns ouput #2ns
		input IN_WIDTH
		output OUT_WIDTH
	endclocking

	clocking cb_mon @(posedge clk);
		default input #1ns
		//add inputs
	endclocking

	// DUT list all inputs and outputs
	modport DUT (clk,
		input start,
		output BestDist,
		output motionX,
		output motionY,
		output AddressR,
		output AddressS1,
		output AddressS2,
		input R,
		input S1,
		input S2,
		output completed);

	modport mon (clk,
		input start,
		output BestDist,
		output motionX,
		output motionY);
endinterface 