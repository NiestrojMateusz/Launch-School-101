# Rotation (Part 1)

# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:

def rotate_array(arr)
  new_arr = arr
  new_arr << new_arr.shift
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

#=======================Ls solution======================================
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

#==============================for string=======================
def rotate_string(string)
  arr = string.split("")
  rotate_array(arr).join("")
end

rotate_string("Matis to mistrz") == "atis to mistrzM"

#==========================for integers===============================

def rotate_integers(int)
  string_int = int.to_s
  rotate_string(string_int).to_i
end

rotate_integers(9675) == 6759