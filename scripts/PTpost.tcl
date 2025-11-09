source /packages/synopsys/setup/asic_flow_setup_14/lib_gen/pt_lib.tcl

read_verilog /home/920528346/asic_flow_setup_14/pnr/outputs/ME.v

link_design

current_design

read_parasitics -format SPEF /home/920528346/asic_flow_setup_14/pnr/outputs/ME.spef.tlup_max_125.spef

read_sdc /home/920528346/asic_flow_setup_14/pnr/outputs/ME.sdc

report_timing > reports/MEsetup.rpt
report_timing -delay_type min > reports/MEhold.rpt

read_parasitics -format SPEF /home/920528346/asic_flow_setup_14/pnr/outputs/ME.spef.tlup.min_125.spef
read_sdc /home/920528346/asic_flow_setup_14/pnr/outputs/ME.sdc
report_timing -delay_type min > reports/MEhold.rpt

report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] > reports/MEreg2reg_setup.rpt

report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min > reports/MEreg2reg_hold.rpt