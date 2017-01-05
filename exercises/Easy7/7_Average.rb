# Multiplicative Average

# Write a method that takes an Array of integers as input, multiplies all of the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places.

# Examples

def show_multiplicative_average(arr)
  divider = arr.size
  sum = 1
  arr.each {|el| sum = sum * el.to_f}
  result = sum / divider
  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])


show_multiplicative_average([2, 5, 7, 11, 13, 17])
