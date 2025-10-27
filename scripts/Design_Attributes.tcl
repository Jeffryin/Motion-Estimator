puts -nonewline "Set Load? y/n?: "
flush stdout 
gets stdin LOAD

if {$LOAD eq "yes"} {
	puts -nonewline "Set value: "
	flush stdout
	gets stdin $VALUE

	puts -nonewline "define object: "
	flush stdout
	gets stdin $OBJ

	set_load $VALUE $OBJ
}

puts -nonewline "Set Drive: y/n?: "
flush stdout
gets stdin DRIVE 

if {$DRIVE eq "yes"} {
	puts -nonewline "Set value: "
	flush stdout
	gets stdin $VALUE

	puts -nonewline "define object: "
	flush stdout
	gets stdin $OBJ

	set_drive $VALUE $OBJ
}
