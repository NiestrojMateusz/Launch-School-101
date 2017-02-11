# Rotation (Part 2)

# Write a method that can rotate the last n digits of a number. For example:
=begin

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

Understand the problem
- input is an integer and a number of digit to rotate (count form end)
- output is rotated number

Example
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Data Structure
-integer
  -have to change it to array of characters
-array
  -have to change indexes 

Algorithm
-change integer to string
-split string to array which first element is a element on index equal to second argument of our method 
-pass this array to earlier rotate array method 
-join elements and change string to integer
=end

def rotate_array(arr)
  new_arr = arr.clone
  new_arr << new_arr.shift
  new_arr
end

def rotate_rightmost_digits(int1, int2)
  new_arr = int1.to_s.chars
  new_arr[-int2..-1] = rotate_array(new_arr[-int2..-1])
  new_arr.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917






#------------------------------------------------------------------
def rotate_array(arr)
  new_arr = arr
  new_arr << new_arr.shift
end

def rotate_rightmost_digits(int1, int2)
  number_to_array = int1.to_s.chars
  number_to_array[-int2..-1] = rotate_array(number_to_array[-int2..-1])
  number_to_array.join("").to_i
end