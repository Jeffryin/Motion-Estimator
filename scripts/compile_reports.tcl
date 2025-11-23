puts -nonewline "Enter desired clock period: "
flush stdout
gets stdin CLK_PER

puts -nonewline "Enter clock name in the design" 
flush stdout 
gets stdin CLOCK

#replaced clk with $CLOCK
create_clock $CLOCK -name ideal_clock1 -period $CLK_PER

puts -nonewline "Choose mapping effort[high medium low]"
flush stdout 
gets stdin MAP_EFFORT
puts -nonewline "Choose area effort[high medium low]"
flush stdout 
gets stdin AREA_EFFORT

compile -map_effort $MAP_EFFORT -area_effort $AREA_EFFORT 

puts -nonewline "Compile with mapping + area effort complete\n"

report_timing 

puts -nonewline "Create a name FOR the output files: "
flush stdout
gets stdin Output_Name

write_sdc ./outputs/$Output_Name.sdc
write –f ddc –hierarchy –output ./outputs/$Output_Name.ddc
write -hierarchy -format verilog -output ./outputs/$Output_Name.v
write_svf ./outputs/$Output_Name.svf

report_area > reports/${Output_Name}_synth_area.rpt
report_design > reports/${Output_Name}_synth_design.rpt
report_cell > reports/${Output_Name}_synth_cells.rpt
report_qor > reports/${Output_Name}_synth_qor.rpt
report_power > reports/${Output_Name}_synth_power.rpt
report_timing > reports/${Output_Name}_setup.rpt
report_timing -delay min > reports/${Output_Name}_hold.rpt

//should be able to start gui afterwards. with the command start_gui
