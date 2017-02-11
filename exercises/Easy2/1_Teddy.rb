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

=begin
Understand the Problem:

  input: -string (as a name)

  output: -Print a sentence with name age
          -When not string was passed, deafult name is "Teddy"
          -Sentence is a string

Data structure:
  Input: String
  Rules: - need to generate a random age number
        - deafult name is Teddy when method was called without argument
  Output: String sentcence

Algorithm:
  - Ask user to type a name
    - put name as a method argument
  - Generate a random number from 20 to 200(include)
    -using a  Random#rand method
    - Assign random method to variable
    - assing "Teddy" to name variable if user type a empty string
  - Print out a sentence  
=end

def print_age(name)
  age = rand(2..200)
  name = "Teddy" if name ==""
  puts "#{name} is #{age} years old"
end  

puts 'Enter a name:'
print_age(gets.chomp)