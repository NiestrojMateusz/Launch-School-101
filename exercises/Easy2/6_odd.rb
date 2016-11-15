# Odd Numbers

# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

(1..99).each { |x|
  puts "\n #{x}" if x.odd?
}

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#Other silution

1.upto(99) {|i|
  print "\n #{i}" if i%2 == 1
}