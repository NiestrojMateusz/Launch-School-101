# Multiply Lists

# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.
=begin
Understanding the problem
input: two same size arrays
output: new array with product of pair elements from same idex of two arguments arrays

# Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Data structure
-arrays

Algorithm
-iterate through first array (each with index)
  -multiply element by element with same index from second array
  -put product to new array

=end

def multiply_list(arr1, arr2) 
  result = []
  arr1.each_with_index do |num, i|
    result << num * arr2[i]
  end
  result
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#----------------------------------------------------------------------------

def multiply_list(arr1, arr2)
  index = 0
  new_arr = []
  loop do
    break if index >= arr1.size
    first_num = arr1[index]
    second_num = arr2[index]
    new_arr[index] = first_num * second_num
    index += 1
  end
  new_arr
end


multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#================one line=========================
def multiply_list(arr1, arr2)
  arr3 = arr1.zip(arr2) {|x, y| arr3 << x * y}
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]