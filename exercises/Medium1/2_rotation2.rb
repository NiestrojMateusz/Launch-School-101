# Rotation (Part 2)

# Write a method that can rotate the last n digits of a number. For example:
def rotate_array(arr)
  new_arr = arr
  new_arr << new_arr.shift
end

def rotate_rightmost_digits(int1, int2)
  number_to_array = int1.to_s.chars
  number_to_array[-int2..-1] = rotate_array(number_to_array[-int2..-1])
  number_to_array.join("").to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.



