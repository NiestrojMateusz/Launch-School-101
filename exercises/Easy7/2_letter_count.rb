# Lettercase Counter

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

# Examples
=begin
Understanding the problem
-input: string with diffrent case letters or digits or symbols
-output: hash with three keys : lowercase, uppercase and neither

Examples
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

Data structure:
-string - array
-hash - need to crete hash

Algorithm
-crete hsh with lowercase, uppercase and neither keys with values 0
-split string to array
  - chars
-iterate through this array
  -check whether char is lowercase, uppercase or special symbol
  -add +1 to adequate has[key]
=end

def letter_case_count(string)
  case_counter = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |char|
    if char =~ /[a-z]/
      case_counter[:lowercase] += 1
    elsif char =~ /[A-Z]/
      case_counter[:uppercase] +=1
    else 
      case_counter[:neither] +=1
    end
  end  
  case_counter
end


#=-----------------------------------------------------------------------------
def letter_case_count(string)
  case_counter = {}
  lowercase = string.scan(/[a-z]/).count
  uppercase =string.scan(/[A-Z]/).count
  neither = string.scan(/[^SA-Za-z]/).count
  case_counter[:lowercase], case_counter[:uppercase], case_counter[:neither] = lowercase, uppercase, neither
  case_counter
end



p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

