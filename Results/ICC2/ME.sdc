################################################################################
#
# Design name:  top
#
# Created by icc2 write_sdc on Sat Nov  8 13:15:10 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: fast
# Scenario: func_fast

# /home/920528346/outputs/3846MH.sdc, line 9
create_clock -name ideal_clock1 -period 3.846 -waveform {0 1.923} [get_ports \
    {clock}]
set_propagated_clock [get_clocks {ideal_clock1}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.021576 [get_clocks {ideal_clock1}]
# -origin useful_skew
set_clock_latency -max 0.0216714 [get_clocks {ideal_clock1}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clock}]
# /home/920528346/outputs/3846MH.sdc, line 10
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {start}]
# /home/920528346/outputs/3846MH.sdc, line 35
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {BestDist[7]}]
# /home/920528346/outputs/3846MH.sdc, line 36
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {BestDist[6]}]
# /home/920528346/outputs/3846MH.sdc, line 37
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {BestDist[5]}]
# /home/920528346/outputs/3846MH.sdc, line 38
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {BestDist[4]}]
# /home/920528346/outputs/3846MH.sdc, line 39
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {BestDist[3]}]
# /home/920528346/outputs/3846MH.sdc, line 40
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {BestDist[2]}]
# /home/920528346/outputs/3846MH.sdc, line 41
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {BestDist[1]}]
# /home/920528346/outputs/3846MH.sdc, line 42
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {BestDist[0]}]
# /home/920528346/outputs/3846MH.sdc, line 43
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {motionX[3]}]
# /home/920528346/outputs/3846MH.sdc, line 44
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {motionX[2]}]
# /home/920528346/outputs/3846MH.sdc, line 45
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {motionX[1]}]
# /home/920528346/outputs/3846MH.sdc, line 46
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {motionX[0]}]
# /home/920528346/outputs/3846MH.sdc, line 47
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {motionY[3]}]
# /home/920528346/outputs/3846MH.sdc, line 48
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {motionY[2]}]
# /home/920528346/outputs/3846MH.sdc, line 49
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {motionY[1]}]
# /home/920528346/outputs/3846MH.sdc, line 50
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {motionY[0]}]
# /home/920528346/outputs/3846MH.sdc, line 51
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressR[7]}]
# /home/920528346/outputs/3846MH.sdc, line 52
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressR[6]}]
# /home/920528346/outputs/3846MH.sdc, line 53
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressR[5]}]
# /home/920528346/outputs/3846MH.sdc, line 54
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressR[4]}]
# /home/920528346/outputs/3846MH.sdc, line 55
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressR[3]}]
# /home/920528346/outputs/3846MH.sdc, line 56
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressR[2]}]
# /home/920528346/outputs/3846MH.sdc, line 57
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressR[1]}]
# /home/920528346/outputs/3846MH.sdc, line 58
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressR[0]}]
# /home/920528346/outputs/3846MH.sdc, line 59
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[9]}]
# /home/920528346/outputs/3846MH.sdc, line 60
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[8]}]
# /home/920528346/outputs/3846MH.sdc, line 61
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[7]}]
# /home/920528346/outputs/3846MH.sdc, line 62
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[6]}]
# /home/920528346/outputs/3846MH.sdc, line 63
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[5]}]
# /home/920528346/outputs/3846MH.sdc, line 64
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[4]}]
# /home/920528346/outputs/3846MH.sdc, line 65
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[3]}]
# /home/920528346/outputs/3846MH.sdc, line 66
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[2]}]
# /home/920528346/outputs/3846MH.sdc, line 67
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[1]}]
# /home/920528346/outputs/3846MH.sdc, line 68
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS1[0]}]
# /home/920528346/outputs/3846MH.sdc, line 69
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[9]}]
# /home/920528346/outputs/3846MH.sdc, line 70
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[8]}]
# /home/920528346/outputs/3846MH.sdc, line 71
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[7]}]
# /home/920528346/outputs/3846MH.sdc, line 72
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[6]}]
# /home/920528346/outputs/3846MH.sdc, line 73
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[5]}]
# /home/920528346/outputs/3846MH.sdc, line 74
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[4]}]
# /home/920528346/outputs/3846MH.sdc, line 75
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[3]}]
# /home/920528346/outputs/3846MH.sdc, line 76
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[2]}]
# /home/920528346/outputs/3846MH.sdc, line 77
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[1]}]
# /home/920528346/outputs/3846MH.sdc, line 78
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {AddressS2[0]}]
# /home/920528346/outputs/3846MH.sdc, line 11
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {R[7]}]
# /home/920528346/outputs/3846MH.sdc, line 12
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {R[6]}]
# /home/920528346/outputs/3846MH.sdc, line 13
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {R[5]}]
# /home/920528346/outputs/3846MH.sdc, line 14
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {R[4]}]
# /home/920528346/outputs/3846MH.sdc, line 15
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {R[3]}]
# /home/920528346/outputs/3846MH.sdc, line 16
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {R[2]}]
# /home/920528346/outputs/3846MH.sdc, line 17
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {R[1]}]
# /home/920528346/outputs/3846MH.sdc, line 18
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {R[0]}]
# /home/920528346/outputs/3846MH.sdc, line 19
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S1[7]}]
# /home/920528346/outputs/3846MH.sdc, line 20
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S1[6]}]
# /home/920528346/outputs/3846MH.sdc, line 21
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S1[5]}]
# /home/920528346/outputs/3846MH.sdc, line 22
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S1[4]}]
# /home/920528346/outputs/3846MH.sdc, line 23
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S1[3]}]
# /home/920528346/outputs/3846MH.sdc, line 24
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S1[2]}]
# /home/920528346/outputs/3846MH.sdc, line 25
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S1[1]}]
# /home/920528346/outputs/3846MH.sdc, line 26
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S1[0]}]
# /home/920528346/outputs/3846MH.sdc, line 27
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S2[7]}]
# /home/920528346/outputs/3846MH.sdc, line 28
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S2[6]}]
# /home/920528346/outputs/3846MH.sdc, line 29
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S2[5]}]
# /home/920528346/outputs/3846MH.sdc, line 30
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S2[4]}]
# /home/920528346/outputs/3846MH.sdc, line 31
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S2[3]}]
# /home/920528346/outputs/3846MH.sdc, line 32
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S2[2]}]
# /home/920528346/outputs/3846MH.sdc, line 33
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S2[1]}]
# /home/920528346/outputs/3846MH.sdc, line 34
set_input_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {S2[0]}]
# /home/920528346/outputs/3846MH.sdc, line 79
set_output_delay -clock [get_clocks {ideal_clock1}] 0 [get_ports {completed}]
