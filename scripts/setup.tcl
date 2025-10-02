define_design_lib WORK -path work

puts -nonewline "Enter Directory Path: "
flush stdout
gets stdin RTL_DIR

lappend search_path $RTL_DIR

source /packages/synopsys/setup/asic_flow_setup_14/lib_gen/lib_steup_14.tcl
# note that the lib_setup file was incorrectly labeled, so it is lib_steup_14.tcl
