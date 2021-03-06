# Counting Up

# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# Examples:

def sequence(int)
  int <= 0 ? 0.downto(int).to_a : 1.upto(int).to_a
end
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
sequence(-3) == [0, -1, -2, -3]