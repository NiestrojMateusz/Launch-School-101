require 'pry'
# Letter Swap

# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:

def swap(string)
  arr = []
  string.split(" ").each do |element|
    arr << element.split("")
  end
  
  swap_arr = []
  arr.each do |e|
    first_char = e.shift
    last_char = e.pop
    swap_arr << e.unshift(last_char).push(first_char)
  end
  
  swap_arr.map! do |el|
    el.join("")
  end
  
  swap_str = swap_arr.join(" ")
  
  swap_str
end  


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

#=================================LS solution ============================

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

#============================Further solution===============================
# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# swap_first_last_characters(word[0], word[-1])

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

# It is not worked because we have undifiend a word variable