`timescale 1ns/1ps

module PEtotalTest;
reg clock;
reg [7:0] R, S1, S2;
reg [15:0] s1s2mux, newDist;

wire [127:0] Accumulate;
integer i;
PEtotal dut(clock, R, S1, S2, s1s2mux, newDist, Accumulate);
initial begin
	R = 3; S1 = 2; S2 = 8; 
	s1s2mux = 16'b1111010100110001;
	newDist = 16'b1111111111111111;

	for(i = 0; i < 16; i = i+ 1) begin
		clock = 0; #5; clock = 1; #5;
	end
	s1s2mux = 16'b0110001101110110;
	newDist = 16'b0101101110110011;
	for(i = 0; i < 16; i = i+ 1) begin
		clock = 0; #5; clock = 1; #5;
	end
end
endmodule