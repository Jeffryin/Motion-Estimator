report_timing -from [all_inputs] -to [all_registers -data_pins] > reports/in2reg_setup.rpt

report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] > reports/reg2reg_setup.rpt

report_timing -from [all_registers -clock_pins] -to [all_outputs] > reports/reg2out_setup.rpt

report_timing > reports/setup.rpt