puts "****Assignment 2.0****"

set cities "cairo alexandria damietta dakahlia faiyum sohag aswan"
foreach x $cities {
set Cities_temp [string toupper [string index $x 0]][string tolower [string range $x 1 end]]
lappend Cities_New $Cities_temp
}
puts "$Cities_New"

puts "Ali Yehia"