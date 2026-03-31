interface ME_Interface (input logic clk);

	logic start;
	logic [7:0] BestDist;
	logic [3:0] motionX, motionY;
	logic completed;
	logic [7:0] R, S1, S2;
	logic [7:0] AddressR;
	logic [9:0] AddressS1, AddressS2;

	clocking cb @(posedge clk);
		output start, R, S1, S2;
		input BestDist, motionX, motionY, completed, AddressR, AddressS1, AddressS2;
	endclocking

	// DUT list all inputs and outputs
	modport DUT (
		clk,
		input start, R, S1, S2,
		output BestDist, motionX, motionY, completed,
		output AddressR, AddressS1, AddressS2
		);

	modport tb (
		clocking cb
		);

endinterface 
