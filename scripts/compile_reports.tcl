puts -nonewline "Enter desired clock period: "
flush stdout
gets stdin CLK_PER

create_clock clk -name ideal_clock1 -period $CLK_PER

compile 
compile -incremental

puts -nonewline "Choose mapping effort[high medium low]"
flush stdout 
gets stdin MAP_EFFORT
puts -nonewline "Choose area effort[high medium low]"
flush stdout 
gets stdin AREA_EFFORT

compile -map_effort $MAP_EFFORT -area_effort $AREA_EFFORT 

report_timing 

puts -nonewline "Create a name FOR the output files: "
flush stdout
gets stdin Output_Name

write_sdc ./outputs/$Output_Name.sdc
write –f ddc –hierarchy –output ./outputs/$Output_Name.ddc
write -hierarchy -format verilog -output ./outputs/$Output_Name.v

report_area > reports/synth_area.rpt
report_design > reports/synth_design.rpt
report_cell > reports/synth_cells.rpt
report_qor > reports/synth_qor.rpt
report_power > reports/synth_power.rpt
report_timing > reports/setup.rpt
report_timing -delay min > reports/hold.rpt
