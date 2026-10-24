source ./lib_container.tcl

puts -nonewline "Enter your RTL filename(s): "
flush stdout
gets stdin RTL_FILE

analyze -library WORK -format Verilog $RTL_FILE

puts -nonewline "Elaborate or read RTL file(s)?"
flush stdout 
gets stdin RESPONSE

if {$RESPONSE eq "elaborate"} {
puts -nonewline "Enter top module you'd like to synthesize: "
flush stdout
gets stdin TOP
elaborate -architecture Verilog -library WORK $TOP
} elseif {$RESPONSE eq "read"} {
read_verilog -rtl $RTL_FILE
}

puts -nonewline "Would you like to constrain the design before compiling?: y/n"
flush stdout
gets stdin DC

if {$DC eq "yes"} {
        source Design_Constraints.tcl
}

puts -nonewline "Would you like to add attributes to the design? y/n: "
flush stdout 
gets stdin DA

if {$DA eq "yes"} {
        source Design_Attributes.tcl
}

