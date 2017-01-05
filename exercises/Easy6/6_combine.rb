# Combining Arrays

# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Example

def merge(first_arr, second_arr)
  
  new_arr = first_arr.concat(second_arr).uniq
  # second_arr.each do |element|
  #   first_arr << element if first_arr.include?(element) == false
  # end
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#=========================LS Solution================================
# def merge(array_1, array_2)
#   array_1 | array_2
# end
# Discussion

# In this exercise we utilize the Ruby method Array#|. This is a method that gives the set union of two arrays, so the result contains no duplicates. It works perfectly for our merge method. The union part of this method means that we get back all the elements that both array_1 and array_2 might contain, but without duplicates.