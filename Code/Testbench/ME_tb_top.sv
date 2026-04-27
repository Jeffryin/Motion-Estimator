`default_nettype none
`timescale 1ns/1ps
module ME_tb_top();
	//clock generation
	logic clk;
	initial clk = 0;
	always #5 clk = ~clk;

	//interface instantiation
	ME_Interface bus(clk);

	//Device Under Test instantiation
	top DUT(.clock(clk),
		.start(bus.start),
		.BestDist(bus.BestDist [7:0]),
		.motionX(bus.motionX [3:0]),
		.motionY(bus.motionY [3:0]),
		.AddressR(bus.AddressR),
		.AddressS1(bus.AddressS1),
		.AddressS2(bus.AddressS2),
		.R(bus.R),
		.S1(bus.S1),
		.S2(bus.S2),
		.completed(bus.completed)
		);

	//ROM_R
	ROM_R read(.clock(clk),
	 	.AddressR(bus.AddressR),
	 	.R(bus.R));

	//ROM_S
	ROM_S search(.clock(clk),
	 	.AddressS1(bus.AddressS1),
	 	.AddressS2(bus.AddressS2),
	 	.S1(bus.S1),
	 	.S2(bus.S2));

	// initial begin
    //     $fsdbDumpfile("dump.fsdb");
    //     $fsdbDumpvars(0, ME_tb_top);
    // end

	ME_test t1(bus);
endmodule