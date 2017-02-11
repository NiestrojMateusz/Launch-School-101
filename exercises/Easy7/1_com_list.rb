# Combine Two Lists

# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.
=begin
Understand the Problem
input: - two arrays
output: -new array 
          - contain all elements from intput arrays
          - elements occur in alternation  

# Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Data structure
-Arrays

Algorithm
-concat arrays
  -using zip merge arrays
  -flatten the new array
=end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#-----------------------------------------------------------------------------


def interleave(arr1, arr2)
  index = 1
  new_arr = []
  new_arr = arr1.each {|el| new_arr << el}
  arr2.each do |e|
    new_arr.insert(index, e)
    index += 2
  end
  new_arr
end



#=================================LS Solution==========================
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end


