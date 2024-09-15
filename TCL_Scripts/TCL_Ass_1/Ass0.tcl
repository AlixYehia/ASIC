puts "****Logical Operations****"

set a 5
set b -1
set c 0

set var0 [expr $a && $c]
set var1 [expr $a || $b]

puts "var0 value is $var0"
puts "var1 value is $var1"

puts "Ali Yehia"