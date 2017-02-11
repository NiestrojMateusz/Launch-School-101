# Odd Numbers

# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.
=begin
Understand the Problem
-print out odd numbers from range
-every number should be on seperate line

Data structure
-array of integers from range
  
Algorithm
-create array form range
-iterate trough array
  - Enumerable#each
-print out all numbers that rest from division by 2 is diffrent from 0

=end

numbers = (1..99).to_a.each do |num|
  puts num if num % 2 !=0
end

#----------------------------------------------------------------------


(1..99).each { |x|
  puts "\n #{x}" if x.odd?
}

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#Other silution

1.upto(99) {|i|
  print "\n #{i}" if i%2 == 1
}

