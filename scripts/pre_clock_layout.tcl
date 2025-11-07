puts -nonewline "Enter name of clock: "
flush stdout
gets stdin CLK

create_clock -period 20 -waveform [list 0 10] [list $CLK]
set_clock_latency 2.5 [get_clocks $CLK]
set_clock_transition 0.2 [get_clocks $CLK]
set_clock_uncertainty 1.2 -setup [get_clocks $CLK]
set_clock_uncertainty 0.5 -hold [get_clocks $CLK]
