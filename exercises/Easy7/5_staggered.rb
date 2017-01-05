# Staggered Caps (Part 1)

# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Example:
# require 'pry'
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