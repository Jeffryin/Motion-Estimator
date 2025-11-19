puts -nonewline "Enter prefix for the file: "
flush stdout 
gets stdin PRE

report_timing -from [all_inputs] -to [all_registers -data_pins] > reports/${PRE}_in2reg_setup.rpt

report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] > reports/${PRE}reg2reg_setup.rpt

report_timing -from [all_registers -clock_pins] -to [all_outputs] > reports/${PRE}reg2out_setup.rpt

report_timing > reports/${PRE}setup.rpt
