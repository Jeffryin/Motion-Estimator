`default_nettype none
`timescale 1ns/1ps
interface ME_Interface(input logic clk);

	logic start;

	logic [7:0] BestDist;
	logic [3:0] motionX, motionY;
	logic completed;
	logic [7:0] R, S1, S2;
	logic [7:0] AddressR;
	logic [9:0] AddressS1, AddressS2;

	clocking drv_cb @(posedge clk);
		default input #1ns output #1ns;
		output start;
		input BestDist, motionX, motionY, AddressR, AddressS1, AddressS2, completed;
	endclocking

	clocking mon_cb @(posedge clk);
		default input #1ns output #1ns;
		input start, BestDist, motionX, motionY, AddressR, AddressS1, AddressS2, R, S1, S2, completed;
	endclocking
endinterface 