source ./lib_container.tcl

puts -nonewline "Enter RTL filename(s): "
flush stdout
gets stdin RTL_FILE

analyze -library WORK -format Verilog $RTL_FILE  

puts -nonewline "Elaborate or read RTL file(s)?"
flush stdout
gets stdin RESPONSE

if {$RESPONSE eq "elaborate"} {
  puts -nonewline "Enter top module you'd like to sythesize: "
  flush stdout
  gets stdin TOP
  elaborate -architecture Verilog -library WORK $TOP
} elseif {$RESPONSE eq "read"} {  
  read_verilog -rtl $RTL_FILE
}
