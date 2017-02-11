# Multiplicative Average

# Write a method that takes an Array of integers as input, multiplies all of the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places.
=begin

# Examples
show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

Understanding the problem:
-multiply all entries from array and then divides by number of entries

Data structure:
-array

Algorithm
-multiply array entries using inject method
  -assign it to var
-divide result of above multiplying by array size
- print result rounded to three decimal places

=end

def show_multiplicative_average(array)
  product = array.inject(1, :*).to_f
  result = product / array.size
  puts "The result is #{format('%.3f', result)}"
end


show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])







def show_multiplicative_average(arr)
  divider = arr.size
  sum = 1
  arr.each {|el| sum = sum * el.to_f}
  result = sum / divider
  puts "The result is #{format('%.3f', result)}"
end


