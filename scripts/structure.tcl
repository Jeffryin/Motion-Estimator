#set_structure <true | false> -design <list of designs> -boolean <low | medium | high> -timing <true | false> 

puts -nonewline "Would you like to structure? [true false]"
flush stdout 
gets stdin STRUCT

if {$STRUCT eq "true"} { 
	puts -nonewline "List all design(s): "
	flush stdout 
	gets stdin DESIGN

	puts -nonewline "Boolean level [low medium high]"
	flush stdout
	gets stdin BOOL

	puts -nonewline "Set timing [true false]"
	flush stdout
	gets stdin TIME

	if {$TIME eq "true"} {
		set_structure $STRUCT -design $DESIGN -boolean $BOOL -timing $TIME
	} else {
	set_structure $STRUCT -design $DESIGN -boolean $BOOL
	}	
}
