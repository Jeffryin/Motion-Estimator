module ME_tb();
	//clock generation
	logic clk;
	intial clk = 0;
	always #5 clk = ~clk;

	//interface instantiation
	ME_Interface bus(clk);

	//Device Under Test instantiation
	top DUT(.clock(clock),
		.start(bus.start),
		.BestDist(bus.BestDist),
		.motionX(bus.motionX),
		.motionY(bus.motionY),
		.motionR(bus.motionR),
		.AddressR(bus.AddressR),
		.AddressS1(bus.AddressS1),
		.AddressS2(bus.AddressS2),
		.R(bus.R),
		.S1(bus.S1),
		.S2(bus.S2),
		.completed(bus.completed)
		);

	//program initialization
	//declare here
endmodule