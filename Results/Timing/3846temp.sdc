###################################################################

# Created by write_sdc on Thu Oct 23 16:00:30 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
create_clock [get_ports clock]  -name ideal_clock1  -period 3.846  -waveform {0 1.923}
