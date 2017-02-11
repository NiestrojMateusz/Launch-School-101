# Merge Sorted Lists

# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# Examples:

def merge(arr1, arr2)
  index1 = 0
  index2 = 0
  result = []
  
  until index1 >= arr1.size || index2 >= arr2.size
    if arr1[index1] < arr2[index2]
      result << arr1[index1]
      index1 += 1
    elsif arr1[index1] > arr2[index2]
      result << arr2[index2]
      index2 += 1
    else 
      result << arr1[index1]
      index1 += 1
      index2 += 1
    end  
  end 
  
  if arr1.empty? 
    result += arr2[index1..-1]
  else
    result += arr1[index1..-1]
  end  
  result
end

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]



# Input: 
#   -two sorted arrays
# Output: 
#   -new array
# Rules:  
#   -all elements, sorted order
#   - cant use any sorted solution afeter joinging arrays
#   - arrays have to bes sorted in time
# Data Structure:
# -arrays of integers

# Algorithm:
# - compare first element from first array with first element on second array
#   - iterate through first array and compare each element with 
  
  