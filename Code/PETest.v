`timescale 1ns/1ps
module PETest;
reg clock;
reg [7:0] R, S1, S2;
reg s1s2mux, newDist;

wire [7:0] Accumulate, Rpipe;

PE uut (clock, R, S1, S2, s1s2mux, newDist, Accumulate, Rpipe);
initial begin
	R = 3; S1 = 0; S2 = 5; s1s2mux =0; newDist = 1; 
	clock = 0; #5; clock = 1; #5; clock = 0; #5; clock = 1; #5;
	s1s2mux = 1; newDist = 0; 
	clock = 0; #5; clock = 1; #5; clock = 0; #5; clock = 1; #5; clock = 0; #5 clock = 1; #5;
	R = 250;
	clock = 0; #5; clock = 1; #5; clock = 0; #5; clock = 1; #5; clock = 0; #5 clock = 1; #5;
	end 
endmodule 