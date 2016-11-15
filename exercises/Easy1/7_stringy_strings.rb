# Stringy Strings

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Examples:

def stringy(number)
  arr = []
  Array.new(number, 0).each_with_index { |char, index|
  char = index.odd? ? 0 : 1
  arr << char
  }
  arr.join
end  

p stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.