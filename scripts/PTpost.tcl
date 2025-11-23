source /packages/synopsys/setup/asic_flow_setup_14/lib_gen/pt_lib.tcl

puts -nonewline "Enter name of the file: "
flush stdout 
gets stdin file
read_verilog /home/920528346/asic_flow_setup_14/pnr/outputs/${file}.v

link_design

current_design

read_parasitics -format SPEF /home/920528346/asic_flow_setup_14/pnr/outputs/${file}.spef.tlup_max_125.spef

read_sdc /home/920528346/asic_flow_setup_14/pnr/outputs/${file}.sdc

report_timing > reports/${file}setup.rpt
report_timing -delay_type min > reports/${file}hold.rpt

read_parasitics -format SPEF /home/920528346/asic_flow_setup_14/pnr/outputs/${file}.spef.tlup.min_125.spef
read_sdc /home/920528346/asic_flow_setup_14/pnr/outputs/${file}.sdc

report_timing -delay_type min > reports/${file}hold.rpt

report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] > reports/${file}reg2reg_setup.rpt

report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min > reports/${file}reg2reg_hold.rpt
