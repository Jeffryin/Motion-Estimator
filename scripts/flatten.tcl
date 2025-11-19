#set_flatten <true | false> -design <list of designs> -effort <low | medium | high> -phase <true | false>

puts -nonewline "Would you like to flatten? true or false: "
flush stdout 
gets stdin FLAT

if {$FLAT eq "true"} {
	puts -nonewline "List all design(s) you wish to flatten: "
	flush stdout 
	gets stdin DESIGN

	puts -nonewline "Effort level low medium high: "
	flush stdout
	gets stdin EFFORT

	puts -nonewline "Would you like to phase the design(s)? y/n: "
	flush stdout
	gets stdin PHASE

	if {$PHASE eq "yes"} {
		set_flatten $FLAT -design $DESIGN -effort $EFFORT -phase true
	}

	if {$PHASE eq "no"} {
		set_flatten $FLAT -design $DESIGN -effort $EFFORT 
	}
} else {
	return
}

