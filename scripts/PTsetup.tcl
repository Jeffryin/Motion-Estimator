# use source /home/ID#/PTsetup.tcl 

source /packages/synopsys/setup/asic_flow_setup_14/lib_gen/pt_lib.tcl

puts -nonewline "Enter filepath where .v (Netlist) is located: "
flush stdout
gets stdin FP

puts -nonewline "Enter Netlist verilog file: (include .v) "
flush stdout 
gets stdin NET

read_verilog "$FP$NET"

puts -nonewline "Enter name of top module: "
flush stdout
gets stdin TM 

current_design $TM

link_design 

puts -nonewline "Enter name of SDC file with .sdc: "
flush stdout 
set SDCF [string trim [gets stdin]]

set sdc_path [file join $FP $SDCF]

if {![file exists $sdc_path]} {
	puts "ERROR: File not found: $FP"
	exit 1
}

read_sdc $sdc_path

puts -nonewline "Enter name for reports: (PT_setup...rpt)"
flush stdout 
gets stdin SETUP

report_timing > reports/$SETUP

puts -nonewline "Enter name for reports: (PT_hold...rpt)"
flush stdout 
gets stdin HOLD

report_timing -delay_type min > reports/$HOLD
