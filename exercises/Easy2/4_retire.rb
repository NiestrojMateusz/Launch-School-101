# When will I Retire?

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
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