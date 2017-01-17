# Lettercase Percentage Ratio

# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples

# require 'pry'
def letter_case_count(string)
  case_counter = {}
  lowercase = string.scan(/[a-z]/).count
  uppercase =string.scan(/[A-Z]/).count
  neither = string.scan(/[^SA-Za-z]/).count
  case_counter[:lowercase], case_counter[:uppercase], case_counter[:neither] = lowercase, uppercase, neither
  case_counter
end

def letter_percentages(string)
  percentage_counter = {}
  all_chars = string.size
  
  case_counter = letter_case_count(string)
  lc_quant, uc_quant, n_quant = case_counter[:lowercase], case_counter[:uppercase], case_counter[:neither] 
  # binding.pry
  lowercase = (lc_quant.to_f / all_chars) * 100
  uppercase = (uc_quant.to_f / all_chars) * 100
  neither = (n_quant.to_f / all_chars) * 100
  
  percentage_counter[:lowercase], percentage_counter[:uppercase], percentage_counter[:neither] = lowercase, uppercase, neither
  
  percentage_counter
end


letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }