puts "****Writing Verilog Block Interface****"

set modname Up_Dn_Counter

# Define input and output ports with their respective widths
set in_ports [list IN \
                   Load \
                   UP \
                   DOWN \
                   CLK ]

set in_ports_width [list 4 \
                         1 \
                         1 \
                         1 \
                         1 ]
                         
set out_ports [list HIGH \
                    Counter \
                    Low ]
                    
set out_ports_width [list 1 \
						  4 \
                          1 ]
                
# Initialize a variable to hold the generated Verilog interface
set verilog_code "module $modname (\n"

# Determine the maximum length of port names for alignment
set max_port_length 0
foreach port $in_ports {
    if {[string length $port] > $max_port_length} {
        set max_port_length [string length $port]
    }
}

foreach port $out_ports {
    if {[string length $port] > $max_port_length} {
        set max_port_length [string length $port]
    }
}

# Determine the maximum length of port widths for alignment
set max_width_length 0
foreach width $in_ports_width {
    if {[string length $width] > $max_width_length} {
        set max_width_length [string length $width]
    }
}

foreach width $out_ports_width {
    if {[string length $width] > $max_width_length} {
        set max_width_length [string length $width]
    }
}


# Add input ports to verilog_code with proper alignment
set type_str "input"
for {set i 0} {$i < [llength $in_ports]} {incr i} {
    set port [lindex $in_ports $i]
    set width [lindex $in_ports_width $i]

    if {$width == 1} {
        set width_str ""
    } else {
        set width_str "\[[expr $width-1]:0]"
    }

    # Calculate padding before the port width
    set padding_before_port_width ""
    set padding_length [expr 10 - [string length $type_str]]
    for {set j 0} {$j < $padding_length} {incr j} {
        append padding_before_port_width " "
    }
	
    # Calculate padding before the port name
    set padding_before_port_name ""
    set padding_length [expr $padding_before_port_width + 10 - [string length $width_str]]
    for {set j 0} {$j < $padding_length} {incr j} {
        append padding_before_port_name " "
    }


    # Add the input ports definitions to verilog_code
    append verilog_code "    $type_str$padding_before_port_width$width_str$padding_before_port_name$port,\n"
}

# Add output ports to verilog_code with proper alignment
set type_str "output"
for {set i 0} {$i < [llength $out_ports]} {incr i} {
    set port [lindex $out_ports $i]
    set width [lindex $out_ports_width $i]

    if {$width == 1} {
        set width_str ""
    } else {
        set width_str "\[[expr $width-1]:0]"
    }
	
    # Calculate padding before the port width
    set padding_before_port_width ""
    set padding_length [expr 10 - [string length $type_str]]
    for {set j 0} {$j < $padding_length} {incr j} {
        append padding_before_port_width " "
    }
	
    # Calculate padding before the port name
    set padding_before_port_name ""
    set padding_length [expr $padding_before_port_width + 10 - [string length $width_str]]
    for {set j 0} {$j < $padding_length} {incr j} {
        append padding_before_port_name " "
    }



    # Add the output ports definitions to verilog_code
	if {$i == [expr [llength $out_ports] - 1]} {
	append verilog_code "    $type_str$padding_before_port_width$width_str$padding_before_port_name$port\n"
	} else {
	append verilog_code "    $type_str$padding_before_port_width$width_str$padding_before_port_name$port,\n"
	}
}
	
# Close the module definition
append verilog_code "    );\n"

# Open the file and write the generated Verilog code
set fh [open "Interface.txt" "w"]
puts $fh $verilog_code
close $fh

puts "$verilog_code"

puts "Ali Yehia"