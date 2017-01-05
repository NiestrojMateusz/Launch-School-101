# Palindromic Substrings

# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Examples:
require 'pry'
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
  arr = substrings_at_start(string)
end

def palindrome?(string)
  string.reverse == string && string.size > 1 
end

def palindromes(string)
  result = []
  arr = substrings(string)
  arr.each do |element|
    # binding.pry
    if palindrome?(element)
      result << element
    end  
  end
  result
end

# palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]