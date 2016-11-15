# How old is Teddy?

# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!

age = rand(20...201)
puts "Who's age you want to know?"
name = gets.chomp.capitalize
name = "Teddy" if name == ""

puts "#{name} is #{age} yeras old"

#===========================================================================
# Other intresting solution
def print_age(name)
  puts "#{name == '' ? 'Teddy' : name} is #{rand(20..200)} years old!"
end

puts '=> Enter a name: '
print_age(gets.chomp)

