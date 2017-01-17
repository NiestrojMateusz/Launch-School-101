# Sequence Count

# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Examples:
def sequence(num1, num2)
  arr = []
  sum = 0
  num1.times do 
    arr << sum = sum + num2
  end
  arr
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

#=====================ls solution======================================
def sequence(count, first)
  (1..count).map { |idx| idx * first }
end