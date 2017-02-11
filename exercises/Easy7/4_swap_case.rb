# Swap Case

# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.
=begin

Understand the Problem 
-swap the case of letter

# Example:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

Data Structure
input: string
  -iterate  method
output: new string

Algorithm
-string.chars
-iterate through every character by map
-if char is uppercase change it to lowercase, else change to uppercase

=end

def swapcase(string)
  string.chars.map do |char|
    char == char.upcase ? char.downcase : char.upcase
  end  
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(string)
  splitten = string.chars.map do |char|
    if char =~ /[A-Z]/
      char.downcase
    elsif char =~ /[a-z]/
      char.upcase
    else 
      char
    end  
  end
  splitten.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'