puts -nonewline "Constrain area? y/n: "
flush stdout 
gets stdin Area

if {$Area eq "yes"} {
	puts -nonewline "Specify Max Area: "
	flush stdout 
	gets stdin MA
}

puts -nonewline "Touch network? y/n: "
flush stdout 
gets stdin NET 

if {$NET eq "yes"} {
	set_dont_touch_network {CLK, RST}
}

puts -nonewline "Touch? y/n: "
flush stdout 
gets stdin TOUCH 

if {$TOUCH eq "yes"} {
	puts -nonewline "Enter components: "
	flush stdout
	gets stdin CMP
	set_don’t_touch $CMP
}

puts -nonewline "Set input delay? y/n: "
flush stdout 
gets stdin ID

if {$ID eq "yes"} {
	puts -nonewline "Enter clock name: "
	flush stdout 
	gets stdin CLOCK

	puts -nonewline "Enter value for input delay: "
	flush stdout
	gets stdin input


	set_input_delay $input -clock $CLOCK [all_inputs]
}

puts -nonewline "Set output delay? y/n: "
flush stdout 
gets stdin OD

if {$OD eq "yes"} {
	puts -nonewline "Enter clock name: "
	flush stdout 
	gets stdin CLOCK

	puts -nonewline "Enter value for output daly: "
	flush stdout 
	gets stdin output
	set_output_delay $output -clock $CLOCK [all_outputs]
}

puts -nonewline "set max delay? y/n: "
flush stdout 
gets stdin MD

if {$MD eq "yes"} {
	set_max_delay 5 -from all_inputs() - to_all_outputs()
}

puts -nonewline "set minimum delay? y/n: "
flush stdout
gets stdin MinD

if {$MinD eq "yes"} {
	set_max_delay 3 -from all_inputs() - to_all_outputs()
}
