source ./lib_container.tcl

puts -nonewline "Enter RTL filename(s): "
flush stdout
gets stdin RTL_FILE

analyze -library WORK -format Verilog $RTL_FILE

read_verilog -rtl $RTL_FILE
