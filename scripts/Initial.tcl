set_host_options -max_cores 10 

source /home/920528346/asic_flow_setup_14/dc_synth/Netlist_link_tar/lib_container.tcl
source setup.tcl 
#set link_library  $LINK_LIBRARY_FILES_MVT 
#set target_library $TARGET_LIBRARY_FILES_MVT

set power "VDD"
set ground "VSS"

puts -nonewline "Enter name for block: "
flush stdout
gets stdin BLOCK
create_lib -ref_libs $NDM_REFERENCE_LIB_DIRS_MVT -technology $TECH_FILE $BLOCK

read_parasitic_tech -tlup $TLUPLUS_MAX_FILE  -layermap  $MAP_FILE -name tlup_max
read_parasitic_tech -tlup $TLUPLUS_MIN_FILE  -layermap  $MAP_FILE -name tlup_min

puts -nonewline "Enter top design: "
flush stdout 
gets stdin top

set TOP_DESIGN $top

puts -nonewline "Enter netlist file including file path: "
flush stdout 
gets stdin file

set gate_verilog $file

read_verilog -top $TOP_DESIGN $gate_verilog

current_design $TOP_DESIGN

set_attribute [get_layers M1] routing_direction vertical
set_attribute [get_layers M2] routing_direction horizontal
set_attribute [get_layers M3] routing_direction vertical
set_attribute [get_layers M4] routing_direction horizontal
set_attribute [get_layers M5] routing_direction vertical
set_attribute [get_layers M6] routing_direction horizontal
set_attribute [get_layers M7] routing_direction vertical
set_attribute [get_layers M8] routing_direction horizontal
set_attribute [get_layers M9] routing_direction vertical
set_attribute [get_layers MRDL] routing_direction horizontal
set_wire_track_pattern -site_def unit -layer M1  -mode uniform -mask_constraint {mask_two mask_one} \
-coord 0.037 -space 0.074 -direction vertical

source mcmm.tcl
