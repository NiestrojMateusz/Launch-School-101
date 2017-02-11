# When will I Retire?

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

=begin
Understand the Problem:
  input: string type by user
  outpu: printed out string
  
Data structure:
  input:
   -string converted to integer

Algorithm:   
-Get inputs from user
  -assign input to variables
  -chaage inputs to integer
-Get date
  -assign date to variable
  - Time#year
-puts string
  
=end

puts "What is your age?"

age = gets.chomp.to_i

puts "At what age would you like to retire?"

retire = gets.chomp.to_i

time = Time.new

years_to_retire = retire - age

puts "It's #{time.year}. You will retire in #{time.year + years_to_retire}."

puts "You have only #{years_to_retire} years of work to go!"

















=end


def get_age
  puts "What is your age?"
  gets.chomp.to_i
end

age = get_age

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

time = Time.new
years_to_retire = retire_age - age
retire_year = time.year + years_to_retire

puts "It's #{time.year}. You wil retire in #{retire_year}"
puts "You have only #{years_to_retire} years of work to go!"