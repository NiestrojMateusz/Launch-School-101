# Leading Substrings

# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

# Examples:

def substrings_at_start(string)
  sum_total = []
  arr = string.split("")
  1.upto(arr.size) do |count|
    sum_total << arr.slice(0, count).reduce(:+)
  end
  sum_total
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']