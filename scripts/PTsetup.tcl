# use source /home/ID#/PTsetup.tcl
source /packages/synopsys/setup/asic_flow_setup_14/lib_gen/pt_lib.tcl

puts -nonewline "Enter filepath where .v (Netlist) is located: "
flush stdout
gets stdin FP

puts -nonewline "Enter Netlist verilog file: (include .v) "
flush stdout 
gets stdin NET

read_verilog "$FP$NET"

link_design 

current_design

puts -nonewline "STA? y/n: "
flush stdout 
gets stdin STA

if {STA eq yes}{
	set_case_analysis 1 -in scanEn
	}elseif{
	set_case_analysis 0 -in scanEn	
}

puts -nonewline "Enter name for reports: (PT_setup...rpt)"
flush stdout 
gets stdin SETUP

report_timing > reports/$SETUP

puts -nonewline "Enter name for reports: (PT_hold...rpt)"
flush stdout 
gets stdin HOLD

report_timing -delay_type min > reports/$HOLD
