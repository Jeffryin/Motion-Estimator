create_clock clk -name ideal_clock1 -period 6
compile -map_effort high -area_effort medium
report_timing
