# Open the rtl.txt file for reading
set fh [open "rtl.txt" r]

# Read the entire content of the file
set file_data [read $fh]

# Close the file after reading
close $fh


# join elements
set designs [join $file_data " "]

# add curly brackets
set designs "\{$designs\}"

# Print the designs list in the specified format
puts $designs

puts "Ali Yehia"