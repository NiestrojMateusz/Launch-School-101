# Write a method that takes a single String argument and returns a new string that contains the original value of the argument, but the first letter of every word is now capitalized.

# You may assume that words are any sequence of non-blank characters, and that only the first character of each word must be considered.

=begin

Understand the Problem
-input: string
-output: new string
          -orginal string with first letter of every world capitalized

Examples

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

Data Structure:
-string
 -split to array
  -join array to string
  
 Algorithm
 -split string to words
 -capitalize first letter of each word
  -iterate throug arrays 
 -join array
 
=end
 
def word_cap(string)
 result = string.split.map do |word|
  word.capitalize
 end
 result.join(" ") 
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'





# ===========================LS==================================

# This can also be written more concisely as:

# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end

# Regarding the concise solution, (&:method) is a shorthand for saying { |item| item.method } or in this case:

# do |word|
#   word.capitalize
# end
# This shorthand syntax may be used with many other iterator methods.

# Further Exploration

# Ruby gives us this convenient method, String#capitalize. If we didn't have that method, then how would you go about solving this problem? There are a few ways to go about doing this.

#=================================Further Exploartion=====================

 def word_cap(string)
  words = string.split(" ")
  uppercase_word = words.map do |word|
    chars = word.chars.each {|char| char.downcase!}
    chars[0].upcase!
    word = chars.join("")
  end  
  uppercase_word.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'