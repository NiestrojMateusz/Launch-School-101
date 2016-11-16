# Searching 101

# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongs the first 5 numbers.

#Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

=begin conclusion
  -get the 1st number from user
  -add it to array
  -get rest of numbers and add it to array
  -check that last number appear earlier in array
    -find a method or compare each element with last one
  -if yes put a comment that it appeart earlier
  -else comment thath it not apear
=end

numbers = []

COMMANDS = ["1st", "2nd", "3rd", "4th", "5th", "last"]

COMMANDS.each {|element|
  puts "==> Enter the #{element} number: "
  number = gets.chomp.to_i
  numbers << number
}

last_num = numbers.pop
repetition = numbers.find_index(last_num)

if repetition == nil
  puts "The number #{last_num} does not appear in #{numbers}"
else
  puts "The number #{last_num} appears in #{numbers}"
end  
# #=========================other working solution==========================
# numbers = []

# COMMANDS = ["1st", "2nd", "3rd", "4th", "5th", "last"]

# COMMANDS.each {|element|
#   puts "==> Enter the #{element} number: "
#   number = gets.chomp.to_i
#   numbers << number
# }
# last_num = numbers.last
# repetition = []
# numbers.each {|element|
#   repetition << element  if element == last_num
# }
# numbers.pop

# if repetition.length > 1
#   puts "The number #{last_num} appear in #{numbers}"
# else
#   puts "The number #{last_num} does not appears in #{numbers}"
# end  

#===============nice solotiuon with method==================================

# def get_number(label)
#   puts "==> Enter the #{label} number:"
#   number = gets.chomp.to_i
# end

# labels = %w(1st 2nd 3rd 4th 5th last)
# numbers = []

# labels.each do |label|
#   numbers << get_number(label)
# end

# last_number = numbers.pop

# if numbers.include?(last_number)
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end