define -library WORK -path work

# asks for RTL directory 
puts -nonewline "Enter Directory path: "
flush stdout
gets rtl_dir

#ask for RTL filename(s)
puts -nonewline "Enter filename(s) of the RTL file: "
gets rtl_file

lappend search_path rtl_dir

# lib_setup_14.tcl has a typo, so the actual filename is lib_steup_14.tcl
source /packages/synopsys/setup/asic_flow_setup_14/lib_gen/lib_steup_14.tcl
# Try relative path first
if {[catch {source ./lib_container.tcl} result]} {
    puts "Could not source ./lib_container.tcl, trying lib_container.tcl instead..."
    if {[catch {source lib_container.tcl} result2]} {
        puts "ERROR: could not source either version of lib_container.tcl"
        puts "First error: $result"
        puts "Second error: $result2"
        exit 1
    }
}

analyze -library WORK -format Verilog rtl_file
read_verilog -rtl rtl_file

# after this run compile 
