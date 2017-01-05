# All Substrings

# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Examples:
def substrings_at_start(string)
  sum_total = []
  arr = string.split("")
  i = 1
  until i > arr.size
    i.upto(arr.size) do |count|
      sum_total << arr.slice(0, count).reduce(:+)
    end
    arr.shift
  end
  sum_total
end

def substrings(string)
  arr = substrings_at_start(string).sort
end
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

p substrings('hello-madam-did-madam-goodbye')