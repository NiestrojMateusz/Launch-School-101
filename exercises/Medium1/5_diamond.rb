# Diamonds!

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

=begin
Understand the problem
- input: a integer
-output: print on the screen a number of strings
-Model
  -given a odd integer
  -output strings equal to value of integer
  -print * (1, 3, 5, 3, 1)
  -print prepend spaces (2, 1, 0, 1, 2)

Data structure
-number
-arrays

Algorithm
-generate array for * [1, 3,... 2a+1 ..., 3, 1]
-generate array for spaces [a, a-1,..., 1, 0, 1, .. a-1, a]
- loop throug this arrays and print out each
=end
def diamond(num)
  sign_arr = (1..num).step(2).to_a + (1..num-1).step(2).to_a.reverse
  spaces = (num-1)/2
  spaces_arr = (0..spaces).to_a.reverse + (1..spaces).to_a
  
  0.upto(num-1) do |i|
    puts "#{" " * spaces_arr[i]}#{"*" * sign_arr[i]}"
  end 
end

diamond(11)
#-------------------------------------------------------------------------

def diamond(int)
  if int == 1
    puts "*"
  else  
    rows_to_middle = (int/2.0).ceil
    int.even? ? stars_multiplier = 2 : stars_multiplier = 1
    spaces_multiplier = int/2
    
    arr = Array.new(rows_to_middle) {Array.new}
    diamond_constr = arr.map do |el|
      el[0], el[1] = " " * spaces_multiplier, "*" * stars_multiplier
      stars_multiplier += 2
      spaces_multiplier -= 1
      el
    end
    
    diamond_constr.each {|row| puts "#{row[0]}#{row[1]}"}
    diamond_constr.pop
    diamond_constr.reverse_each {|row| puts "#{row[0]}#{row[1]}"}
  end  
end  




#====================ls solution==================================
# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

diamond(5)
diamond(9)
diamond(10)
diamond(1)
diamond(22)