# Staggered Caps (Part 1)

# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.
=begin
Understand the problem 
Take a string and return new staggered string

# Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

Data structure 
-string, array

Algorithm
-split string to chars array
-change every char at even index to uppercase  
  -check if char is uppercase
-join chars to string
-

=end

def staggered_case(string)
  result = string.chars.map.with_index do |char, index|
    if (index.even? || index == 0) && char == char.downcase
      char.upcase
    elsif index.odd? && char == char.upcase
      char.downcase
    else
      char
    end  
  end 
  result.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# require 'pry'

=begin 
def staggered_case(string, first_char_case=true)
  arr = string.split("")
  first_char_upcase = first_char_case
  new_arr = arr.each_with_index do |el, i|
    # binding.pry
    if first_char_upcase == true && i.even? == true
      el.upcase!
    elsif 
      el.downcase!
    end
    
    if first_char_upcase == false && i.even? == false
      el.upcase!
    end  
  end  
  new_arr.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
=end