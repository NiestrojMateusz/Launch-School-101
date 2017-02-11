# Rotation (Part 3)

# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
=begin
  Understanding the problem
  -rotate first digit fixed it, an then rotete digit on next index
  
Example
  max_rotation(735291) == 321579
  max_rotation(3) == 3
  max_rotation(35) == 53
  max_rotation(105) == 15 # the leading zero gets dropped
  max_rotation(8_703_529_146) == 7_321_609_845
  
Data structure
-integer

Algorithm
- create a counter vraiable equal to array length
-create a loop 
  -use rotate_rightmost_digits metod
  -increase iterator about 1
  - loop unless counter = -1
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

def max_rotation(int)
  arr = int.to_s.chars
  counter = arr.length
  result = int
  until counter == 1
  #binding.pry
    result = rotate_rightmost_digits(result, counter)
    counter -= 1
  end
  
  result
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# ---------------------------------------------------------------------------
def rotate_array(arr)
  new_arr = arr
  new_arr << new_arr.shift
end

def rotate_rightmost_digits(int1, int2)
  number_to_array = int1.to_s.chars
  number_to_array[-int2..-1] = rotate_array(number_to_array[-int2..-1])
  number_to_array.join("").to_i
end

def max_rotation(int)
  digits = int.to_s.size
  until digits < 2
    int = rotate_rightmost_digits(int, digits)
    digits -= 1
  end  
  int
end  

p max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845