source /packages/synopsys/setup/asic_flow_setup_14/lib_gen/pt_lib.tcl

puts -nonewline "Enter Netlist verilog file: "
flush stdout 
gets stdin NET

read_verilog $NET

puts -nonewline "Enter top module: "
flush stdout 
gets stdin TOP

current_design $TOP

link_design

set_case_analysis 0 -in scanEn

puts -nonewline "Enter name for reports: (PT_setup...rpt)"
flush stdout 
gets stdin SETUP

report_timing > reports/$SETUP

puts -nonewline "Enter name for reports: (PT_hold...rpt)"
flush stdout 
gets stdin HOLD

report_timing -delay_type min > reports/$HOLD
