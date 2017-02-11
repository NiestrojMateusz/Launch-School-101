# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.
=begin
Understanding  the problem 
-input is a string of minimum two words
-output is word next to last word

# Examples:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

Data structure
-string
-arrays

Algorithm
-split string to arrays
-take word before last word by spliting the array
=end

def penultimate(string)
  string.split.slice(-2)
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

#-------------------------------------------------------------------------------

def penultimate(string)
  words = string.split(" ")
  words[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

#=========================for middle word=====================

def middle_word(string)
  words = string.split(" ")
  middle = words.length/2
  words.size.even? ? words[middle-1..middle].join(' ') : words[middle]
end

middle_word('last word is') == 'word'
middle_word('Launch School is great!') == 'School is'