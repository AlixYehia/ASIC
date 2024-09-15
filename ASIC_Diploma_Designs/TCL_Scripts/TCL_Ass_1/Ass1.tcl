puts "****Bitwise Operations****"

set a 20
set b 5
set c 9

set var0 [expr $a & $c]
set var1 [expr $a | $b]
set var2 [expr $a ^ $a]

puts "var0 = $var0"
puts "var1 = $var1"
puts "var2 = $var2"

puts "Ali Yehia"